class Hosts::ExperiencesController < ApplicationController
  def index
    @experiences = policy_scope([:hosts, Experience]).order(created_at: :asc)
  end
end
