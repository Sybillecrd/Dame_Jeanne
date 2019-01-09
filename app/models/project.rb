class Project < ApplicationRecord
  belongs_to :artist
  has_many :posters
end
