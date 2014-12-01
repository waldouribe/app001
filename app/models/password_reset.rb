# encoding: utf-8
class PasswordReset < ActiveRecord::Base
  RESET_TIME_VALIDITY = 2.days

  belongs_to :user
  
  validates :user, presence: true
  validates :token, uniqueness: true

  before_create :set_random_token, :set_expires_at
  after_create { PasswordResetMailer.after_create_mailer(self).deliver }

  def self.new_from_email(email)
    user = User.find_by email: email
    PasswordReset.new user: user
  end

  def set_random_token
    begin
      self.token = SecureRandom.urlsafe_base64
    end while PasswordReset.exists?(token: token)
  end

  def set_expires_at
    self.expires_at = DateTime.now + RESET_TIME_VALIDITY
  end

  def can_be_used?
    not expired? and not used
  end

  def expired?
    DateTime.now > expires_at
  end
end
