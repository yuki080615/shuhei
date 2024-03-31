class Api::TasksController < ApplicationController
    protect_from_forgery with: :null_session

    def index
        tasks = Task.all
        render status: 200, json:tasks
    end

    def create
        task = Task.new(name: params[:name])
        task.save
        render status: 201, json: task
    end

end
