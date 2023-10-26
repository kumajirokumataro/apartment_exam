class Appartment < ApplicationRecord
  has_many :stations, inverse_of: :appartment, dependent: :destroy
  accepts_nested_attributes_for :stations,allow_destroy: true, reject_if: :all_blank
end
