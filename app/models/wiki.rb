class Wiki < ApplicationRecord
  belongs_to :user

  default_scope { order('created_at DESC') }

  validates :user, presence: true
  validates :title, length: { minimum: 1 }, presence: true
  validates :body, length: { minimum: 1 }, presence: true
end
