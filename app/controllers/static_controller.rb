class StaticController < ApplicationController
  def team
  end
  def contact
  end
  def gossip
    @gossips = Gossip.find(params[:index])
  end
  def homepage
    @gossips = Gossip.all
  end
  def user
    @id = params[:id]
  end 
end
