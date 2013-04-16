class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :title
      t.text :body
      t.integer :photos_count, :default => 0

      t.timestamps
    end
  end
end
