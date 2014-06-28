class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(allowed_parameters)
    @project.save

    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def allowed_parameters
    params.require(:project).permit(:project_name)
  end

end
