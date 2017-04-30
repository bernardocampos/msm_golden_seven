class ActorsController < ApplicationController
  def new_form

  end
  def create_row
    actor = Actor.new
    actor.name = params[:name]
    actor.dob = params[:dob]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]
    actor.save

    redirect_to("/actors/")
    #how would i use render here and have it work properly
  end

  def index
    @actor = Actor.all
  end
  def show
    @actor = Actor.find(params[:id])
  end
  def edit_form
    @actor = Actor.find(params[:id])
  end
  def update_row
    actor = Actor.find(params[:id])
    actor.name = params[:name]
    actor.dob = params[:dob]
    actor.bio = params[:bio]
    actor.image_url = params[:image_url]
    actor.save
    redirect_to("/actors/#{params[:id]}")
  end
  def destroy_row
    actor = Actor.find(params[:id])
    actor.destroy
    redirect_to("/actors/")
  end
end
