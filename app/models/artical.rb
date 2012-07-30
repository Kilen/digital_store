class Artical < ActiveRecord::Base
  belongs_to :catogory
  validates :title, :presence => true
  validates :content, :presence => true
  validates :catogory_id, :presence => true
end
