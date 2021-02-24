class ExperiencesController < ApplicationController

    before_action :redirect_if_not_logged_in

  def new
    if params[:user_id] && @user = User.find_by_id(params[:user_id])
      @experience = @user.experiences.build
    else
      @experience = Experience.new
    end
    
  end

  def index
    @experiences = Experience.all
  end 

  def create
    
    @experience = current_user.experiences.build(experience_params)
  
    if @experience.save
      redirect_to experiences_path
    else
      render :new
    end
  end

  def edit 
    @experience = Experience.find_by_id(params[:id])
    redirect_to experiences_path if !@experience || @experience.user != current_user
    @experience.build_category if !@experience.category
  end 

  def show
    @experience = Experience.find_by_id(params[:id])
    redirect_to experiences_path if !@experience
  end

  private 

  def experience_params
    params.require(:experience).permit(:title,:content)
  end

end
