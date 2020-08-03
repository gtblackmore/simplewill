class CreateRealProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :real_properties do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
