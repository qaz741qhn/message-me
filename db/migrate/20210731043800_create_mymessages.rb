class CreateMymessages < ActiveRecord::Migration[6.1]
  def change
    create_table :mymessages do |t|
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
