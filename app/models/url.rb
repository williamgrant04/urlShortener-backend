class Url < ApplicationRecord
  validates :source_url, presence: true
  validates :source_url, format: { with: URI.regexp }

  before_create :generate_identifier

  def generate_identifier
    self.identifier = SecureRandom.urlsafe_base64(6)
  end
end
