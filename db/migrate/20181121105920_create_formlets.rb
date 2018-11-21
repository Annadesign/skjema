class CreateFormlets < ActiveRecord::Migration[5.1]
  def change
    create_table :formlets do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :position
      t.string :duration
      t.string :education
      t.text :challenge
      t.text :motivation
      t.text :grounds
      t.string :document

      t.timestamps
    end
  end
end
