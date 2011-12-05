class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model

  attr_accessible :email, :password, :password_confirmation, :address, :remember_me, :name, :phone, :specialization, :last_name, :city, :pincode, :state, :degree

  validates :email, :presence => true, :uniqueness => true, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/ }
  validates :name, :presence => true
  validates :last_name, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :pincode, :presence => true
  validates :state , :presence => true
  validates :phone, :presence => true
  validates :specialization, :presence => true
  validates :degree , :presence => true
end
