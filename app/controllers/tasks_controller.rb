class TasksController < ApplicationController
  before_action :forbid_login_user, only: [:top]
  def top
    @jobs = Job.all
  end

  def index
  end

  def show
  end
end
