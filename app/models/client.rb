class Client < ApplicationRecord
    has_many :admins
    has_many :admins, through: :clientadmins
end
