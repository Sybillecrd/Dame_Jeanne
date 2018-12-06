class Artist < ApplicationRecord
  has_many :projects
  has_many :posters, :through => :projects  
end
