class CommentsController < ApplicationController

    before_action :redirect_if_not_logged_in

    def index
        if params[:experience_id] && @experience = Experience.find_by_id(params[:experience_id])
            @comments = @experience.comments
         else
           @error = "That experience doesn't exist" if params[:experience_id]
           @comments = Comment.all
         end 
    end 

    def new 
        if params[:post_id] && @experience = Experience.find_by_id(params[:experience_id])
            @comment = @experience.comments.build
          else
            @error = "That experience doesn't exist" if params[:experience_id]
            @comment = Comment.new
        end
    end 

    def create 
        @comment = current_user.comments.build(comment_params)
        if @comment.save
            redirect_to comments_path
        else
            render :new
        end
    end 

    def show 
    end 

    def edit 
    end

    def update
    end 

    private 

    def comment_params
        params.require(:comment).permit(:content,:experience_id)
    end 

end
