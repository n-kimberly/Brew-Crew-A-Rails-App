class Wiki < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, length: { minimum: 1 }, presence: true
  validates :body, length: { minimum: 1 }, presence: true
end
