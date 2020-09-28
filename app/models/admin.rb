class Admin < ApplicationRecord
    has_many :clients
    has_many :clients, through: :clientadmins
end
