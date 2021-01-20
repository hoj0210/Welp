class User < ApplicationRecord 
    validates :fname, :lname, :email, :zip_code, :password_digest, :session_token, presence: true
    validates :email, uniqueness: true
    validates :password, length: { minimum: 6 }, allow_nil: true

    has_many :reviews,
        primary_key: :id,
        foreign_key: :user_id,
        class_name: :Review 

    attr_reader :password 
    after_initialize :ensure_session_token 

    def self.find_by_credentials(email, password) 
        user = User.find_by(email: email)
        return user if user && user.is_password?(password)
    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def password=(password)
        @password = password 
        self.password_digest = BCrypt::Password.create(password)
    end
    
    def reset_session_token!
        self.update!(session_token: self.class.generate_session_token)
        self.session_token
    end
    private 

    def ensure_session_token 
        self.session_token ||= self.class.generate_session_token
    end

    def self.generate_session_token
        SecureRandom::urlsafe_base64(16)
    end
end