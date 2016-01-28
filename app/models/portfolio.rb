class Portfolio < ActiveRecord::Base
  validates :client_name, presence: true
end
