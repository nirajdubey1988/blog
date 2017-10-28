class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
    	t.string :subject
    	t.text :description
      t.integer :user_id
    	t.timestamps
    end
    add_index :articles, :user_id
  end
end
