class Comment < ApplicationRecord

  validates :content, presence: true , length: { maximum: 140 }
  #validates: user_id, presence: true
  #validates: topic_id, presence: true

  belongs_to :topic 
  belongs_to :user
end
