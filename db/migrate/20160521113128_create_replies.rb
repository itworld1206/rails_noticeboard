class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|

      t.text    :content
      t.integer :post_id  # reply가 어느 post에 속해있는지 확인하는 id

      t.timestamps null: false
    end
  end
end
