require "bcrypt"

module Shield
  class Password
    
    def self.check(plaintext, hashed_pw)
      hashed_pw == plaintext
    end

    protected
      def self.encrypt(password)
          BCrypt::Password.create(password)
      end

  end
end
