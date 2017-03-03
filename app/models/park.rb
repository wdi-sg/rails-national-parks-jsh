class Park < ApplicationRecord
  # validates_presence_of :name, :description, :photo
  validates :name, presence: true, length: {maximum: 80}
  validates :description, presence: true, length: {maximum: 80}
  validates :photo, presence: true, length: {maximum: 80}
end
