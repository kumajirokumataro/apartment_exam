class Station < ApplicationRecord
  belongs_to :appartment, inverse_of: :stations
end
