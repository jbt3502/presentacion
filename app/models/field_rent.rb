class FieldRent < ApplicationRecord
  belongs_to :field
  belongs_to :service
end
