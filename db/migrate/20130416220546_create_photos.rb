class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer    :photoable_id
      t.string     :photoable_type
      t.attachment :img

      t.timestamps
    end
  end
end
