class Article < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 6, maximum: 50 }, uniqueness: { message: " already exists." }
  validates :description, presence: true, length: { minimum: 10, maximum: 40000 }, uniqueness: { message: " already exists." }
end