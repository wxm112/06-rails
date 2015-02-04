class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
        t.string :title
        t.string :language
        t.string :dop
        t.string :genre
        t.integer :author_id
        t.timestamps
    end
  end
end
