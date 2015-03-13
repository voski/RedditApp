class SubsController < ApplicationController
  before_action :ensure_moderator, only: [:edit, :update]

  def new
    if logged_in?
     @sub = Sub.new(moderator_id: current_user.id)
    else
     redirect_to subs_url
    end
  end

  def edit

  end

  def index
    render json: Sub.all
  end

  def ensure_moderator
    @sub = Sub.find(params[:id])
    redirect_to subs_url unless @sub.is_moderator?(current_user)
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      flash.notice = 'Sub successfully created!'
      redirect_to sub_url(@sub)
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :new
    end
  end

  def update
    if @sub.update(sub_params)
      flash.notice = 'Sub successfully updated!'
      redirect_to sub_url(@sub)
    else
      flash.now[:errors] = @sub.errors.full_messages
      render :edit
    end
  end

  def show
    render json: Sub.find(params[:id])
  end

  private

  def sub_params
    params.require(:sub).permit(:title, :description, :moderator_id)
  end
end
