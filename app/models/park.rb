class Park < ApplicationRecord
  # validates_presence_of :name, :description, :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
