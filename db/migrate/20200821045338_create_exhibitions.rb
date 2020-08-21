class CreateExhibitions < ActiveRecord::Migration[6.0]
  def change
    create_table :exhibitions do |t|
      t.string :exhibition_name
      t.string :place
      t.string :address
      t.text :detail
      t.string :category

      t.timestamps
    end
  end
end
