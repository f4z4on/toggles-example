require 'feature'

class GreetingsController < ApplicationController
  def show
    if Feature.enabled? 'saas_greet'
      render action: 'show.saas_greet'
    else
      render action: 'show'
    end
  end
end
