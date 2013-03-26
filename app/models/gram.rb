class Gram < ActiveRecord::Base
  attr_accessible :description

  validates :description, presence: true

  belongs_to :user #rails association to the gram
  validates :user_id, presence: true #double make sure that if user id is not present, it wont save
end
