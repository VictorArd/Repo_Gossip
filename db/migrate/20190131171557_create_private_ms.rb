class CreatePrivateMs < ActiveRecord::Migration[5.2]
  def change
    create_table :private_ms do |t|
      t.string :content
      t.timestamps
    end
  end
end
