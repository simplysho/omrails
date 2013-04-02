class Gram < ActiveRecord::Base
  attr_accessible :description, :image


  validates :description, presence: true
  validates :user_id, presence: true #double make sure that if user id is not present, it wont save
  validates_attachment :image, presence: true, #can take out presence if it doesnt have to have pic
  							   content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/png', 'image/gif'] },
                            	size: { less_than: 5.megabytes }

  belongs_to :user #rails association to the gram
  has_attached_file :image, styles: { medium: "320x240>", thumb: "100x100" }  #from paperclip
  
end
