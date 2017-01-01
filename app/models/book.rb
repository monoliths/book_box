class Book < ApplicationRecord
  belongs_to :user
  has_attatched_file :book
  has_attatched_file :resource
end
