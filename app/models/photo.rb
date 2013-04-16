class Photo < ActiveRecord::Base
  belongs_to :photoable, polymorphic: true

  attr_accessible :img, :img_file_name, :img_content_type, :img_file_size, :photoable_id, :photoable_type

  has_attached_file :img,
    # :storage => :s3,
    # :s3_credentials => "#{Rails.root}/config/s3.yml",
    :url => "/photos/:type_name/:article_id/:img_id/:style/:basename.:extension",
    :styles => {
      :tiny => '32x32#',
      :icon => '48x48#',
      :r_tiny => '64x64#',
      :r_icon => '96x96#',
      :thumb => '128x128#',
      :r_thumb => '256x256#',
      :preview => '800x600',
      :hd => '1280x720>'
    }

  validates_attachment :img, :content_type => { :content_type => /^image\/./ }
end
