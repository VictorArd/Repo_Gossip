class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :descrip
      t.string :email
      t.string :age
      t.belongs_to :city, index: true
      t.timestamps
    end
  end
end
