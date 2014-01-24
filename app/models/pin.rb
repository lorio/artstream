class Pin < ActiveRecord::Base
				belongs_to :user
				has_attached_file :image, :styles => { 
																		:medium => "300x300>",																			 
																		:thumb => "100x100>" }

				validates :image, presence: true
													
				validates_attachment_size :image,
															:less_than => 2.megabytes,
															:message => 'under 2MB only' 				
  			validates_attachment_content_type :image, 
                                    :content_type => /^image\/(png|gif|jpeg)/,
                                    :message => 'only (png/gif/jpeg) images'
  			validates :description, presence: true, length: { minimum: 3 }
end
