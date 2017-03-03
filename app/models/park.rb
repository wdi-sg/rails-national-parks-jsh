class Park < ApplicationRecord
  # validates_presence_of :name, :description, :photo
  validates :name, presence: true, length: {maximum: 10}
  validates :description, presence: true, length: {maximum: 10}
  validates :photo, presence: true, length: {maximum: 40}
end
