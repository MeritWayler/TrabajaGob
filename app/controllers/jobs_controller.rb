class JobsController < ApplicationController
  def index
  end

  def search
    search_area = params[:searchArea]
    search_location = params[:searchLocation]
    @resultados = Job.search(search_area, search_location)
  end
end
