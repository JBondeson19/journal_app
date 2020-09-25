class CreateAdmins < ActiveRecord::Migration[6.0]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :name
      t.string :license
      t.string :specialization
      t.string :location

      t.timestamps
    end
  end
end
