class Client < ApplicationRecord
    has_many :client_admins
    has_many :admins, through: :client_admins
end
