class Language < ApplicationRecord
  has_many :specialties
  has_many :users, through: :specialties
end
