module ExperiencesHelper

    def index_display_header
        if @user
          content_tag(:h1, "#{@user.username}'s Experiences:")
        else
          content_tag(:h1, "All Experiences")
        end
    end

    def display_experiences
        if @user.experiences.empty?
          tag.h2(link_to('No experiences yet - write a experience here', new_experience_path))
        else
          user = @user == current_user ? 'Your' : "#{@user.username}'s"
          content_tag(:h2, "#{user} #{pluralize(@user.experiences.count, 'Experience')}:")
    
        end
    end


    
end
