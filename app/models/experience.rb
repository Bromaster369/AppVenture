class Experience < ApplicationRecord
    belongs_to :user
    belongs_to :category
    has_many :comments 
    has_many :users, :through => :comments 
    validates :content, :title, presence: true
    validate :too_many_experiences

    

    scope :alpha, -> { order(:title)}
    scope :most_comments, -> {left_joins(:comments).group('experiences.id').order('count(comments.experience_id) desc')}

    

    def category_attributes=(attr)
        self.category = Category.find_or_create_by(attr) if !attr[:name].blank?
    end

    def too_many_experiences
        today_experiences = user.experiences.select do |e|
            e.created_at.try(:to_date) == Date.today
        end 
    end 
end
