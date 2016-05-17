class User < ActiveRecord::Base
  enum role: [:user, :surveyor, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_many :cats

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
