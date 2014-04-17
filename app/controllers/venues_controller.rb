class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  def index
    @venues = Venue.all
    @venues = Venue.all.sort_by {|venue| venue.name.downcase }
    @venues = @venues.reverse
  end

  def show
  end

  def new
    @venue = Venue.new
  end

  def edit
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.packs.build({venue_id: @venue.id, dog_id: venue_params[:dog_id]})

    if @venue.save
      flash[:notice] = 'Venue was successfully created.'
      redirect_to venues_path
    else
      render 'new'
    end
  end

  def update
    @venue = Venue.find(params[:id])
    if venue_params[:dog_ids]
      pack_params = venue_params[:dog_ids].map{ |m| {venue_id: venue.id, dog_id: m}} 
      @venue.packs.build(pack_params)
    end
    if @venue.update(venue_params)
    
      flash[:notice] = 'Venue was successfully updated.'
      redirect_to venues_path
    else
      render 'edit'
    end
  end

  def destroy
    @venue = Venue.find(params[:id])
    @venue.destroy
    flash[:notice] = "Venue deleted."
    
    redirect_to venues_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venue
      @venue = Venue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venue_params
      params.require(:venue).permit(
        :name, 
        :address1, 
        :address2, 
        :city, 
        :state,
        :zip,
        :dog_id,
        :dog_ids => []
      )
    end
end
