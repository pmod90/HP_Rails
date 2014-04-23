class CoordinatesController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def index
    
  	@coordinates = Coordinate.all
  	respond_to do |format|
  		format.html
  		format.json {render json: @coordinates }
  	
  	puts "Console"
  	@test = params[:Test]
  	puts @test
  end

end

def create
  
@lattitude = params[:lattitude]
@longitude = params[:longitude]
c = Coordinate.new 
c.lattitude =  @lattitude
c.longitude =  @longitude
c.save
redirect_to '/coordinates'
end

end
