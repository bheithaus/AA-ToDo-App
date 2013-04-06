class Item < ActiveRecord::Base
  attr_accessible :complete, :description, :title, :project_id
  
  belongs_to :project
  
  validates :title, :description, presence: true
  validates :title, length: { maximum: 25 }
  validates :description, length: { maximum: 400 }
end
