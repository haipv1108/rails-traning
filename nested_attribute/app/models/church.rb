class Church < ApplicationRecord
  has_many :services, inverse_of: :church

  accepts_nested_attributes_for :services

  validates :description, :website, presence: true
end