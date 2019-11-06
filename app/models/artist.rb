class Artist < ApplicationRecord
  has_many :projects, dependent: :destroy
  has_many :posters, :through => :projects, dependent: :destroy

  def to_param
    "#{id} #{first_name} #{last_name} #{job}".parameterize
  end
end
