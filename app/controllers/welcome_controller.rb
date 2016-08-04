class WelcomeController < ApplicationController
    def index
        @lastVentas = Ventum.all.order('created_at desc').limit(10)
        @stocks =  Stock.where("cantidad < 10")

    end
end
