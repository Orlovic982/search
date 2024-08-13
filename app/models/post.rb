class Post < ApplicationRecord
    scope :filter_by_title, -> (title) { where('title ILIKE ?', "%#{title}%") }
    scope :sorted, -> { order(created_at: :desc) }
    
end
