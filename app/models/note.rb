class Note < ActiveRecord::Base
	belongs_to :user

	has_attached_file:image, :styles => { :medium => "300x300>", :thumb => "100x100>" }

	validates :description, presence: true, length: { maximum: 750 }
end
