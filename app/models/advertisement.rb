class Advertisement < ApplicationRecord
  has_one :platform
  belongs_to :company
end
