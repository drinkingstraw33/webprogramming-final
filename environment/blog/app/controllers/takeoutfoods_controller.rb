class TakeoutfoodsController < ApplicationController
    def new
        @takeoutfood = Takeoutfood.new
    end
    def create
        @takeoutfood = Takeoutfood.new(takeoutfood_params)
        
        if @takeoutfood.save
            redirect_to @takeoutfood
        else
            render 'new'
        end
    end
    def show
       @takeoutfood = Takeoutfood.find(params[:id])
    end
    def index
       @takeoutfoods = Takeoutfood.all 
    end
    def edit
        @takeoutfood = Takeoutfood.find(params[:id])
    end
    def update
        @takeoutfood = Takeoutfood.find(params[:id])
        if @takeoutfood.update(takeoutfood_params)
        redirect_to @takeoutfood
        else
        render 'edit'
        end
    end
    def destroy
        @takeoutfood = Takeoutfood.find(params[:id])
        @takeoutfood.destroy
        redirect_to takeoutfoods_path
    end
    private
        def takeoutfood_params
           params.require(:takeoutfood).permit(:title, :address, :text, :imagelink, :webpage) 
        end
end
