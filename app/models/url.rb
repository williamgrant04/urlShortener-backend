class Url < ApplicationRecord
  validates :source_url, presence: true
end
