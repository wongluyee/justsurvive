class PagesController < ApplicationController
  def home
    @experiences = policy_scope(Experience)
  end
end
