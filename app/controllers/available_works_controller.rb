class AvailableWorksController < ApplicationController
  def index
    @available_works = AvailableWork.includes(:tags, :taggings).all
  end
end
