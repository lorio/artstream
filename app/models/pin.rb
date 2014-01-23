class Pin < ActiveRecord::Base
				belongs_to :user
				has_attached_file :image, :styles => { 
																		:medium => "300x300>",
																		:large => "100%>",																				 
																		:thumb => "100x100>" }

				validates :image, presence: true
				#validates :content_type => { :content_type => ["image/jpg", "image/gif", "image/png", "image/jpeg"] }
  			validates :description, presence: true, length: { minimum: 3 }
end
