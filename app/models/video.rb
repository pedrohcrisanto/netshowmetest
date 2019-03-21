class Video < ApplicationRecord
  belongs_to :user
  validates_presence_of :name
  validates_presence_of :url
  validates_associated :user
  paginates_per 5
end