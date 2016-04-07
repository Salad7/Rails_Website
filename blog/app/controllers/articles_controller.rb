class ArticlesController < ApplicationController
    
  def article_params
    params.require(:article).permit(:title, :text)
  end
    
    def index
        @articles = Article.all
    end
    
    def new
    end
    
    #The create is responsible for saving the article
    def create
        #Create an article
        #@params holds the paramaters we are intrested in
        @article = Article.new(article_params)
        
       # byebug 
        
        #Save the article
        @article.save
        
        #redirecting the user to the show action
        redirect_to @article
        
        
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
end
