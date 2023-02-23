class Hosts::ExperiencesController < ApplicationController
  def index
    @experiences = policy_scope([:hosts, Experience])
  end
end
