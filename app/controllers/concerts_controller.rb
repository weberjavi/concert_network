class ConcertsController < ApplicationController

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)
  end

  def edit
    
  end

  def destroy
    
  end

  private

  def concert_params
    params.require(:concert).permit(:artist, :venue, :city, :price, :description, :date)
  end

end
