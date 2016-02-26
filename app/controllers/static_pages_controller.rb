class StaticPagesController < ApplicationController
  before_action :authenticate_user!
  def home
  	@trust = Trust.where(:completed => false, :user => current_user.id)
  	@will = Will.where(:completed => false, :user => current_user.id)
  	@pension = PensionTransfer.where(:completed => false, :user => current_user.id)
  end

  def tools
  end

  def showclients
  	@client = Client.where(:user => current_user.id)
  end
end
