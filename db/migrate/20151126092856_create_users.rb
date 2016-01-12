class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :name
    	t.string :surname
    	t.date :birth_date

    	t.timestamps

    end
  end
end
