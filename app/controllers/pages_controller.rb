class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :privacy, :about]
  def home
    @courses = Course.all.limit(3)
  end

  def privacy
  end

  def about
  end
end
