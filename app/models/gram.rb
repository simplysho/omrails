class Gram < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true, length: { maximum: 10 }
end
