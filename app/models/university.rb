class University < ApplicationRecord
  has_many :domains, dependent: :destroy
  has_many :web_pages, dependent: :destroy
end
