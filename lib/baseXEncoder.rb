require "baseXEncoder/version"

module BaseXEncoder
  class BaseXEncoder

    def self.encode(numeric)

      # Get the outer bound for the length (digits) of the number in the new base
      chars = Math::log(numeric,base).floor + 1
      n = numeric
      str = ''
      x = chars

      # Calculate the number in the new base, as represented by the replacement value
      while x > 0 do
        position = (n.to_f / (base.to_f ** (x - 1))).floor
        portion = (base.to_f ** (x - 1))*position
        str << replacements[position.to_i]
        n = n - portion
        x -= 1
      end

      #  Prepend leading "zeros"
      x = minimum_chars - str.length
      while x > 0
        str = replacements[0] << str
        x -= 1
      end

      str
    end

    def self.decode(encoded_value)
      decoded_value = 0
      x = 0
      power = encoded_value.length - 1
      while x < encoded_value.length do
        decoded_value += (replacements.index(encoded_value[x.to_i]) * (base ** power))
        x += 1
        power -= 1
      end
      decoded_value
    end


    private

    def self.replacements
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"  #  this is basic Base64
    end

    def self.base
      replacements.length
    end

    def self.minimum_chars
      4
    end
  end
end
