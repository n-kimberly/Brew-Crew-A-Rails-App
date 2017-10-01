class User < ApplicationRecord

  has_many :wikis, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  before_save { self.email = email.downcase }
  before_save { self.role ||= :standard }

  enum role: [:standard, :premium, :admin]

  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :standard
  end

end
