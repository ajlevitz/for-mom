class PromptsController < ApplicationController
  def index
    @prompts = Prompt.all
  end

  def new
  end

  def create
    @prompt = Prompt.new(prompt_params)
    @prompt.save

    redirect_to @prompt
  end

  def show
    @prompt = Prompt.find(params[:id])
  end

private
  def prompt_params
    params.required(:prompt).permit(:question)
  end
end
