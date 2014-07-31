# app/controllers/articles_controller.rb

class ArticlesController < ApplicationController
	
	def index
		@articles = Article.order('created_at DESC')
	end

	def new
		@article = Article.new
	end

	def create
  	@article = Article.new(article_params)
 
  	if @article.save
  	redirect_to @article
  	else 
  		render 'new'
  	end
	end

	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end

	def show 
 		@article = Article.find(params[:id]) # However you are retrieving your @article
	end 

	 def update
  	@article = Article.find(params[:id])

  	if @article.update(article_params)
  		redirect_to @article
  	else
  		render 'edit'
  	end
  end
  def edit
  	@article = Article.find(params[:id])
	end

  def article_params
    params.require(:article).permit(:title, :text)
  end
end






