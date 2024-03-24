class Api::TasksController < ApplicationController
    def index
        tasks = Task.all
        render status: 200, json:tasks
    end
end
