class Image < ActiveRecord::Base
  belongs_to :catogory
  has_attached_file :img,
    :url=>"/assets/images/:basename.:extension",
    :path=>":rails_root/public/assets/images/:basename.:extension"

  validates_attachment_presence :img
  validates_attachment_content_type :img, :content_type => ['image/jpeg', 'image/png', 'image/gif', 'image/bmp']
  validates :catogory_id, :presence => true

  before_create :formalize_file_name
  before_update :formalize_file_name

  def formalize_file_name  
    extension = File.extname(img_file_name).downcase  
    self.img.instance_write(:file_name, 
              "#{Time.now.strftime("%Y%m%d%H%M%S")}#{rand(1000)}#{extension}")  
  end  
end
