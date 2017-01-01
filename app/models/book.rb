class Book < ApplicationRecord
  belongs_to :user
  has_attached_file :image
  has_attached_file :resource


  # Validation ensures a valid image
  validates_attachment_content_type :image,
  content_type: /^image\/(png|gif|jpeg)/,
	message: "Only images allowed"
  # Validation ensures a valid e-book type for resource
  validates_attachment_content_type :resource,
		content_type: ['application/pdf'],
		message: "Only pdf allowed"

  # Validation ensures image is present
  validates :image, attachment_presence: true
  # Validation ensures resource is present
  validates :resource, attachment_presence: true
end
