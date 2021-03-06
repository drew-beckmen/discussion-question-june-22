class ProjectsController < ApplicationController 

    def index 
        @projects = Project.all 
    end 

    def show 
        @project = Project.find(params[:id])
    end 

    def new 
        @project = Project.new 
    end 

    def create 
        @project = Project.create(params.require(:project).permit(:name))
        redirect_to "/projects/#{@project.id}"
    end 

    def edit 
        @project = Project.find(params[:id])
    end 

    def update 
        @project = Project.find(params[:id])
        @project.update(params.require(:project).permit(:name))
        redirect_to "/projects/#{@project.id}"
    end 

    def delete
        @project = Project.find(params[:id])
        @project.destroy
        redirect_to "/projects"
    end


end 
