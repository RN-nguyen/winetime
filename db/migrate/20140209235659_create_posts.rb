class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.string :content

      t.timestamps
    end
  end

  # def up
  #   change_create_table :name, :title, :string
  #   change_create_table :content, :text
  # end

  # def down 
  #    change_create_table :name, :title, :content, :string
  # end
  
end
