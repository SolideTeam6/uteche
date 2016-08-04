class WelcomeController < ApplicationController
    def index
        @lastVentas = Ventum.all.order('created_at desc').limit(10)
        @stocks =  Stock.where("cantidad < 10")

        @venta = Ventum.all.order('created_at desc')


        @deposito = Deposito.all.order('created_at desc')
    end
end
