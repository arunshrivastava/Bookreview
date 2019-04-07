class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.text :address
      t.numeric :phone
      t.string :subject
      t.text :description

      t.timestamps
    end
  end
end
