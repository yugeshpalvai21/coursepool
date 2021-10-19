class PagesController < ApplicationController
  def home
    @courses = Course.all.limit(3)
  end

  def privacy
  end

  def about
  end
end
