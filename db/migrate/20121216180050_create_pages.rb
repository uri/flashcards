class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :page_number
      t.integer :notebook_id
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
