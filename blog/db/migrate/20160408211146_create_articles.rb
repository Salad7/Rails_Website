class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end
  end
  
    def up
    create_table 'articles' do |t|
      t.string 'title'
      t.string 'text'
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      end
    end
  
  def down
    drop_table 'articles'
  end
  
end
