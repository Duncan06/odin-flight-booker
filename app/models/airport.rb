class Airport < ApplicationRecord
    has_many :flights
    accepts_nested_attributes_for :flights
end
