class Url < ApplicationRecord
  validates :shortened_url, presence: true
end
