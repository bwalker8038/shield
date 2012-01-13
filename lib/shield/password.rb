require "bcrypt"

module Shield
  module Password
    def self.encrypt(password, salt = generate_salt)
      digest(password, salt) + salt
    end

    def self.check(password, encrypted)
      digest(password, salt) == encrypted
    end

  private
    def self.digest(password, salt)
      BCrypt::Engine.hash_secret(password, salt)
    end

    def self.generate_salt
      BCrypt::Engine.generate_salt
    end
  end
end
