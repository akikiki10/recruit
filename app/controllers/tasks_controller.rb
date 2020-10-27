class TasksController < ApplicationController
  skip_before_action :login_required
  before_action :forbid_login_user, only: [:top]
  def top
  end

  def index
  end

  def show
  end
end
