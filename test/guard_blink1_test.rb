require 'test/unit'
require 'guard-blink1'

class GuardBlink1Test < Test::Unit::TestCase
  def test_get_colour
    assert_equal "#00FF00", GuardBlink1.get_colour("success")
    assert_equal "#FF0000", GuardBlink1.get_colour("failed")
    assert_equal "#EE5500", GuardBlink1.get_colour("pending")
    assert_equal "#000000", GuardBlink1.get_colour("off")
    assert_equal "#FF1111", GuardBlink1.get_colour("default")
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
    GuardBlink1.set_colour("#000000")
    assert_equal 0.0, rgb.red
    assert_equal 1, rgb.green
    assert_equal 0.0, rgb.blue
  end

end