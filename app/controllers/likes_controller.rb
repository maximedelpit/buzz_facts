class LikesController < ApplicationController
  before_action :set_buzz_fact

  def new
    @like = Like.new
  end

  def create
    @like = Like.new()
    @like.buzz_fact = @buzz_fact
    # @like = @buzz_fact.likes.build()
    if @like.save
      redirect_to buzz_fact_path(@buzz_fact)
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_buzz_fact
    @buzz_fact = BuzzFact.find(params[:buzz_fact_id])
  end

  # def like_params
  #   params.require(:like).permit(:buzz_fact_id)
  # end
end
