class ArticlesController < ApplicationController
    
    private
  def article_params
    params.require(:article).permit(:title, :text)
  end
    
    def index
        @articles = Article.all
    end
    
    def new
    end
    
    def create
        @article = Article.new(params[:article])
    end
    
end
