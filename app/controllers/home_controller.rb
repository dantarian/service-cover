class HomeController < ApplicationController
    def index
        @services = Service.order(:name).all
        @engineers = Engineer.order(:name).all
        @working_dates = WorkingDate.order(:working_date).all
    end
end
