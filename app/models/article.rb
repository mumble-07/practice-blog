# frozen_string_literal: true

class Article < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :body, presence: true, length: { minimum: 5 }

  has_many :comments # association niya with comments
end
