require "bcrypt"

module Shield
  class Password

    self.salt = BCrypt::Engine.generate_salt

    def self.encrypt(password)
      BCrypt::Engine.hash_secret(password, self.salt)
    end

    def self.check(plaintext, hashed_pw)
      hashed_pw == encrypt(plaintext)
    end

  end
end
