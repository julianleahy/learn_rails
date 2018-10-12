class ArticlesController < ActionController::Base

    def new
       @article = Article.new 
    end

    def create
        #render plain: params[:article].inspect

        # create new instance and call our private method to permit values we expect to receive
        @article = Article.new(article_params)
        # save to db
        @article.save
    end

    private
        def article_params 
            params.require(:article).permit(:title, :description)
        end
        
    
       
end