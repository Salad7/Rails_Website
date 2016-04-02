class ArticlesController < ApplicationController
    
    def create
        render plain: params[:article].inspect
        byebug
    end
    
    def new
    end
end
