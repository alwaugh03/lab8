class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @events = Event.limit(5)
  end

  def events
  end

  def categories
  end

  def login
  end

  def signup
  end
end
