class CreateNotices < ActiveRecord::Migration[8.1]
  def change
    create_table :notices do |t|
      t.string :title
      t.text :body
      t.string :author_name
      t.string :category
      t.boolean :pinned,default: false, null: false

      t.timestamps
    end
  end
end
