class StaticController < ApplicationController
  def team
  end
  def contact
  end
  def gossip
    @gossips = Gossip.all
    @index = params[:index]
  end

  def homepage
    @gossips = Gossip.all
  end
end
