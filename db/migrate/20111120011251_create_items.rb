class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user
      t.float :value
      t.string :name

      t.timestamps
    end
  end
end
