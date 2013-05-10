require 'blink1'
require 'colormath'

class GuardBlink1

  COLOURS = {
    'success' => '#00FF00',
    'failed'  => '#FF0000',
    'pending' => '#EE5500',
    'off'     => '#000000',
    'default' => '#FF1111',
  }

  class << self
    def blink_colour(status)
      colour = get_colour(status)
      puts "BLINK: #{colour}"
      set_colour(colour)
    end

    def get_colour(status)
      colour = COLOURS.fetch(status) do |key|
        begin
          key.to_color; key
        rescue ArgumentError, NoMethodError
          COLOURS['default']
        end
      end
    end

    def set_colour(colour)
      rgb = ColorMath::hex_color(colour)
      r,g,b = (rgb.red * 255), (rgb.green * 255), (rgb.blue * 255)
      Blink1.open do |blink1|
        blink1.set_rgb(r,g,b)
      end
      rgb
    end
  end
end