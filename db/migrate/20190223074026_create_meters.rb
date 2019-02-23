class CreateMeters < ActiveRecord::Migration[5.2]
  def change
    create_table :meters do |t|
      t.string      :title
      t.text        :description
      t.timestamps null: true
    end
  end
end
