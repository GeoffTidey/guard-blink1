require 'test/unit'
require 'guard_blink1'

class GuardBlink1Test < Test::Unit::TestCase
  def test_get_colour
    assert_equal "#0F0", GuardBlink1.get_colour("success")
    assert_equal "#F00", GuardBlink1.get_colour("failed")
    assert_equal "#FFC300", GuardBlink1.get_colour("pending")
    assert_equal "#000", GuardBlink1.get_colour("off")
    assert_equal "#777", GuardBlink1.get_colour("default")
  end

  def test_set_colour
    rgb = GuardBlink1.set_colour("#112233")
    GuardBlink1.set_colour("#000000")
    assert_equal 0.06666666666666667, rgb.red
    assert_equal 0.13333333333333333, rgb.green
    assert_equal 0.200, rgb.blue
  end

  def test_blink_colour
    rgb = GuardBlink1.blink_colour("success")
    GuardBlink1.blink_colour("off")
    assert_equal 0.0, rgb.red
    assert_equal 1, rgb.green
    assert_equal 0.0, rgb.blue
  end

  def test_blink_colour_unknown
    rgb = GuardBlink1.blink_colour("wibble")
    GuardBlink1.blink_colour("off")
    assert_equal 0.4666666666666667, rgb.red
    assert_equal 0.4666666666666667, rgb.green
    assert_equal 0.4666666666666667, rgb.blue
  end

end