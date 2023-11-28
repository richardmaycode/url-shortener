class ShortCode
  ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".freeze
  BASE = ALPHABET.length

  def self.encode(number)
    return ALPHABET.first if number.zero? || number.nil?
    
    result = ""

    while number > 0 do
      index = number % 62
      char = ALPHABET[index]
      result.prepend char
      number = number / 62
    end

    result
  end

  def self.decode(string)
  end
end