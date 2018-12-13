class Artist < ApplicationRecord
  has_many :projects, dependent: :destroy
  has_many :posters, :through => :projects, dependent: :destroy  
end
