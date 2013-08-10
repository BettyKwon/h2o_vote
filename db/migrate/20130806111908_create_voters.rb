class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
			t.integer :user_number, :unique => true
			t.string :results

			t.boolean :president
			t.boolean :vice_president
      t.timestamps
    end
  end
end
