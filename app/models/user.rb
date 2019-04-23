class User < ApplicationRecord
    has_many :listings
    attr_accessor :remember_token, :activation_token
    before_save :downcase_email
    before_create :create_activation_digest
    validates :fname, presence: true, length: { maximum: 50, minimum: 1}
    validates :lname, presence: true, length: { maximum: 50, minimum: 1}
    UNCC_EMAIL_REGEX = /\A[\w+\-.]+@uncc\.edu\z/i
    validates :email, presence: true, length: { maximum: 255 },
        format: { with: UNCC_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
    
    # Returns the hash digest of the given string
    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
            BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
    end
    
    # Returns a random token.
    def User.new_token
        SecureRandom.urlsafe_base64
    end
    
    # Remembers a user in the database for use in persistent sessions.
    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_digest, User.digest(remember_token))
    end
    
    # Forgets a user
    def forget
        update_attribute(:remember_digest, nil)
    end
    
    # Returns true if the given token mathces the digest
    def authenticated?(attribute, token)
        digest = send("#{attribute}_digest")
        return false if digest.nil?
        BCrypt::Password.new(digest).is_password?(token)
    end
    
    # Activates an account
    def activate
        update_columns(activated: true, activated_at: Time.zone.now)
    end
    
    # Sends activation email
    def send_activation_email
        UserMailer.account_activation(self).deliver_now
    end

    private
        # Converts email to all lower-case
        def downcase_email
            self.email = email.downcase
        end
        
        # Creates and assigns the activation token and digest
        def create_activation_digest
            self.activation_token = User.new_token
            self.activation_digest = User.digest(activation_token)
        end
end