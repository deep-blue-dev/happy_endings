class Quote
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :phone, :item, :comments
  validates :name, :email, presence: true

  validates :email, length: {maximum: 255 },
                    format: {with: Devise::email_regexp}


end
