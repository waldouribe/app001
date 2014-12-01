class User < ActiveRecord::Base
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, :email, presence: true
  validates :email, uniqueness: true
  validates :email, format: {with: VALID_EMAIL_REGEX, message: "Invalid email"}

  before_create { set_unique_random_field_to :authentication_token }
  before_save { self.email.downcase! }

  has_many :password_resets

  def set_unique_random_field_to(column_name)
    begin
      self[column_name] = SecureRandom.urlsafe_base64
    end while self.class.exists?(column_name => self[column_name])
  end
end
