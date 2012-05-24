require "bcrypt"

module Shield
  class Password
    
    def encrypt(password)
      self.salt = BCrypt::Engine.generate_salt
      self.encrypted = BCrypt::Engine.hash_secret(password, self.salt)
    end

    def self.check(password, encrypted, salt = self.salt)
      encrypted == BCrypt::Engine.hash_secret(password, salt)
    end
    
  end
end
