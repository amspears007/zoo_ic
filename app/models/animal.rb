class Animal < ApplicationRecord
  belongs_to :zoo, class_name: "::Zoo"
end