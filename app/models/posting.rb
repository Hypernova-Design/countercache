class Posting < ActiveRecord::Base
  has_many :photos, :as => :photoable, :dependent => :destroy, :order => 'created_at'

  accepts_nested_attributes_for :photos, :allow_destroy => true

  attr_readonly :photos_count
  attr_accessible :body, :title, :photos, :photos_attributes
end
