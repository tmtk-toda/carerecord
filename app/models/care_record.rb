class CareRecord < ApplicationRecord
  validates :content, presence: true
  belongs_to :client,foreign_key: 'client_id'
end
