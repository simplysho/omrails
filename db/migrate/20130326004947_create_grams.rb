class CreateGrams < ActiveRecord::Migration
  def change
    create_table :grams do |t|
      t.string :description

      t.timestamps
    end
  end
end
