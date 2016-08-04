class Dashboard2Controller < ApplicationController
    before_action :authenticate_alumno!
    def index
    end
end
