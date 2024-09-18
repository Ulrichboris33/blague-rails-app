class DrolesController < ApplicationController
 
    def index
        @drole = Drole.all
    end

    def show
        @drole = Drole.find(params[:id]) 
    end

    def new
        @drole = Drole.new
    end

    def edit
        @drole = Drole.find(params[:id]) 
    end

    def create
        @drole= Drole.new(params_drole)

        if @drole.save
            redirect_to  droles_path
        else
            puts @drole.errors.any? 
            render :new
        end
    end
    
    def update
        @drole = Drole.find(params[:id]) 
    end

    private

    def params_drole
     params.require(:drole).permit(:nom, :contenu, :auteur) 
    end
end
  