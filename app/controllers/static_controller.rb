class StaticController < ApplicationController
  def team
  end
  def contact
  end
  
  def homepage
    gossips = Gossip.all
    gossips.each do |gossip|
      return gossip.content
      return gossip.user_id.first_name
    end
  end
end
