class Artist < ApplicationRecord
  has_many :songs, dependent: :destroy
  validates :name, presence: true

def self.order_by_name
      order(:name)
end

def self.order_by_date
  order(:created_at)
end

end
