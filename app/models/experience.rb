class Experience < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments 
    has_many :users, :through => :comments 

    scope :alpha, -> { order(:title)}
    scope :most_comments, -> {left_joins(:comments).group('experiences.id').order('count(comments.experience_id) desc')}

end
