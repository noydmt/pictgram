class Favorite < ApplicationRecord

  #validates: user_id, presence: true
  #validates: topic_id, presence: true

  belongs_to :topic
  belongs_to :user
end
