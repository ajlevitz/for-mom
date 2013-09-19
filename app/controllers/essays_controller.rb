class EssaysController < ApplicationController
  def index
    @essays = Essay.all
  end

  def new
  end

  def create
    @prompt = Prompt.find(params[:prompt_id])
    @essay = @prompt.essays.create(params[:essay].permit(:submitter, :comments))
    redirect_to prompt_path(@prompt)
  end

  def show
    @essay = Essay.find(params[:id])
  end

private
  def essay_params
    params.required(:essay).permit(:submitter, :comments)
  end
end
