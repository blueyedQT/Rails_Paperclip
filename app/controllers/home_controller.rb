class HomeController < ApplicationController
  def new
  	@photo = Photo.new
  end

  def create
  	@photo = Photo.create(name:params[:photo][:name], image:params[:photo][:image], description:params[:photo][:description])
  	if @photo.save
  		redirect_to home_index_path
  	else 
  		flash[:errors] = @photo.errors.full_messages
  		redirect_to root_path
  	end
  end

  def index
  	@photo = Photo.last
  end
end
