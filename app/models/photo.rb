class Photo < ActiveRecord::Base
  belongs_to :photoable, polymorphic: true

  attr_accessible :img, :photoable_id, :photoable_type
end
