class ClientAdmin < ApplicationRecord
  belongs_to :client
  belongs_to :admin
end
