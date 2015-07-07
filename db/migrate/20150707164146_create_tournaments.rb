class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.date :start_date
      t.string :name
      t.date :end_date

      t.timestamps null: false
    end
  end
end
