
class User < ActiveRecord::Base

  has_many :proposals
  has_many :refutations

  before_save { self.email = email.downcase }
  before_save :encrypt_password
  after_save :clear_password

  attr_accessor :password
  #EMAIL_REGEX = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i
  validates :username, :presence => true, :uniqueness => true, :length => { :in => 3..20 }
  #validates_with :email, :presence => true, :uniqueness => true, :format => EMAIL_REGEX
  validates :password, :confirmation => true #password_confirmation attr
  validates_length_of :password, :in => 6..20, :on => :create

  def encrypt_password
    if password.present?
      self.password = BCrypt::Engine.hash_secret(password, nil)
    end
  end

  def clear_password
    self.password = nil
  end
end
