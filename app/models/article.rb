class Article < ApplicationRecord
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: { minimum: 6, maximum: 50 }, uniqueness: { message: " already exists." }
  validates :description, presence: true, length: { minimum: 10, maximum: 40000 }, uniqueness: { message: " already exists." }
end