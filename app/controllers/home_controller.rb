class HomeController < ApplicationController
  def show
    @activities = Activity.all
  end
end
