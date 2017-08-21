class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def home

  end

  def units
    @units = Info.UNITS
    render 'units/show'
  end

  def nations
    @nations = Info.NATIONS
    render 'nations/show'
  end

  def strategy
    render 'strategy/show'
  end

  def structures
    render 'structures/show'
  end
end
