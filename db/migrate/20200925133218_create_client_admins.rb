class CreateClientAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :client_admins do |t|
      t.belongs_to :client, null: false, foreign_key: true
      t.belongs_to :admin, null: false, foreign_key: true

      t.timestamps
    end
  end
end
