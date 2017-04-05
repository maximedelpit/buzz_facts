class BuzzFactsController < ApplicationController
  def new
    @buzz_fact = BuzzFact.new
  end

  def create
    @buzz_fact = BuzzFact.new(buzz_fact_params)
    if @buzz_fact.save
      redirect_to buzz_fact_path(@buzz_fact)
    else
      render :new
    end
  end

  def show
    @buzz_fact= BuzzFact.find(params[:id])
  end

  private

  def buzz_fact_params
    params.require(:buzz_fact).permit(:title, :content)
  end

end
