class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :status
      t.decimal :value
      t.decimal :percentage
      t.decimal :time

      t.timestamps
    end
  end
end
