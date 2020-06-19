class LightfoodsController < ApplicationController
    def new
        @lightfood = Lightfood.new
    end
    def create
        @lightfood = Lightfood.new(lightfood_params)
        
        if @lightfood.save
            redirect_to @lightfood
        else
            render 'new'
        end
    end
    def show
       @lightfood = Lightfood.find(params[:id])
    end
    def index
       @lightfoods = Lightfood.all 
    end
    def edit
        @lightfood = Lightfood.find(params[:id])
    end
    def update
        @lightfood = Lightfood.find(params[:id])
        if @lightfood.update(lightfood_params)
        redirect_to @lightfood
        else
        render 'edit'
        end
    end
    def destroy
        @lightfood = Lightfood.find(params[:id])
        @lightfood.destroy
        redirect_to lightfoods_path
    end
    private
        def lightfood_params
           params.require(:lightfood).permit(:title, :address, :text, :imagelink, :webpage) 
        end
end
