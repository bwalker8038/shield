require "bcrypt"

module Shield
  class Password

    self.salt = BCrypt::Engine.generate_salt

    def self.encrypt(password)
      BCrypt::Engine.hash_secret(password, self.salt)
    end

    def self.check(password, encrypted)
      encrypted == BCrypt::Engine.hash_secret(password, salt)
    end

  end
end
