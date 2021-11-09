class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :privacy, :about, :courses_activity]
  def home
    @courses = Course.all.limit(3)
  end

  def privacy
  end

  def about
  end

  def courses_activity
    @activities = PublicActivity::Activity.all
  end
end
