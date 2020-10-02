class Client < ApplicationRecord
    has_many :client_admins, dependent: :destroy
    has_many :admins, through: :client_admins
    

    validates :age, numericality: {greater_than: 18, less_than_or_equal_to: 100  }
end
