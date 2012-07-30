class Catogory < ActiveRecord::Base
  has_many :articals, :dependent => :destroy
  has_many :images, :dependent => :destroy

  validates :name, :presence => true
  validates :description, :presence => true
end
