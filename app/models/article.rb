class Article < ActiveRecord::Base
  # Ensures that all of the articles have a title thats 5 letters long
  validates :title, presence: true, length: { minimum: 5 }
end
