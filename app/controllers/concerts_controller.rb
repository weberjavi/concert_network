class ConcertsController < ApplicationController

  def index
    @today_concerts = Concert.today_concerts
    @actual_month_concerts = Concert.actual_month_concerts
  end

  def new
    @concert = Concert.new
  end

  def create
    @concert = Concert.new(concert_params)
    if @concert.save 
      flash[:notice] = "Event created correctly"
      redirect_to new_concert_path
    else
      flash[:alert] = "You have some errors:"
      render "new"
    end
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
