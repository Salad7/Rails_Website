class ArticlesController < ApplicationController
    

    
    def index
        @articles = Article.all
    end
    
    def new
    end
    
    #The create is responsible for saving the article
    def create
        #Create an article
        #@params holds the paramaters we are intrested in
        @article = Article.create!(article_params)
        
      
        
        #Save the article
       # @article.save
        
        #redirecting the user to the show action
        redirect_to @article
        
        
    end
    
    def show
        @article = Article.find(params[:id])
    end
    
      def article_params
         params.require(:article).permit(:title, :text)
      end
end
