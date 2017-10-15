class Wiki < ApplicationRecord

  belongs_to :user
  has_many :collaborations
  has_many :users, through: :collaborations

  default_scope { order('created_at DESC') }

  validates :user, presence: true
  validates :title, length: { minimum: 1 }, presence: true
  validates :body, length: { minimum: 1 }, presence: true
end
