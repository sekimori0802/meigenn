class Like < ApplicationRecord
  belongs_to :great, counter_cache: :likes_count
  belongs_to :user
end
