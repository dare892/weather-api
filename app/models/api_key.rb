class ApiKey < ApplicationRecord
  belongs_to :user

  def generate_token(hex = nil)
    hex ||= SecureRandom.hex(10)
    if ApiKey.find_by(token: hex)
      generate_token
    end
    return hex
  end
end
