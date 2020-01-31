class SponsorsController < ApplicationController
  include Response

  def index
    @animals = Sponsor.all
    json_response(@animals)
  end

  def show
    @sponsor = Sponsor.find(params[:id])
    json_response(@sponsor)
  end

  def create
    @sponsor = Sponsor.create!(sponsor_params)
    json_response(@sponsor, :created)
  end

  def update
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.update!(sponsor_params)
     render status: 200, json: {
       message: "This sponsor has been updated successfully."
     }
   end
  end

  def destroy
    @sponsor = Sponsor.find(params[:id])
    if @sponsor.destroy!
    render status: 200, json: {
      message: "This sponsor has been deleted successfully."
    }
  end
  end

  private
  def sponsor_params
    params.permit(:sponsor_name)
  end
end
