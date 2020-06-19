class HeavyfoodsController < ApplicationController
    def new
        @heavyfood = Heavyfood.new
    end
    def create
        @heavyfood = Heavyfood.new(heavyfood_params)
        
        if @heavyfood.save
            redirect_to @heavyfood
        else
            render 'new'
        end
    end
    def show
       @heavyfood = Heavyfood.find(params[:id])
    end
    def index
       @heavyfoods = Heavyfood.all 
    end
    def edit
        @heavyfood = Heavyfood.find(params[:id])
    end
    def update
        @heavyfood = Heavyfood.find(params[:id])
        if @heavyfood.update(heavyfood_params)
        redirect_to @heavyfood
        else
        render 'edit'
        end
    end
    def destroy
        @heavyfood = Heavyfood.find(params[:id])
        @heavyfood.destroy
        redirect_to heavyfoods_path
    end
    private
        def heavyfood_params
           params.require(:heavyfood).permit(:title, :address, :text, :imagelink, :webpage) 
        end
end
