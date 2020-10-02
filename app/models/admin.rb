class Admin < ApplicationRecord
    has_many :client_admins 
    has_many :clients, through: :client_admins
    
end
