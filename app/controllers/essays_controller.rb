class EssaysController < ApplicationController
  def index
    @essays = Essay.all
  end

  def new
  end

  def create
    @essay = Essay.new(essay_params)
    @essay.save

    redirect_to @essay
  end

  def show
    @essay = Essay.find(params[:id])
  end

private
  def essay_params
    params.required(:essay).permit(:submitter, :comments)
  end
end
