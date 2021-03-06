class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  
  validates :comment, presence: true, length: { maximum: 255 }
  validates :post_id, presence: true
  validates :user_id, presence: true
end
