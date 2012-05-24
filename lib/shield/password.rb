require "bcrypt"

module Shield
  class Password
    
    def encrypt(password)
      self.salt = BCrypt::Engine.generate_salt
      self.encrypted = BCrypt::Engine.hash_secret(password, self.salt)
    end

<<<<<<< HEAD
    def self.check(password, encrypted, salt = self.salt)
      encrypted == BCrypt::Engine.hash_secret(password, salt)
=======
    def self.check(plaintext, hashed_pw)
      hashed_pw == encrypt(plaintext)
>>>>>>> 20cceb1a8a966941f8614f69cf00b2d29fea55cf
    end
    
  end
end
