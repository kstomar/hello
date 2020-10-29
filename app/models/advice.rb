class Advice < ApplicationRecord
  has_many :potential_causes
  accepts_nested_attributes_for :potential_causes, :allow_destroy => true
end
