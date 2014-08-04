# app/controllers/articles_controller.rb

class ArticlesController < ApplicationController

	helper_method :title
	helper_method :image
	helper_method :images

	def images
		images = Image.all
	end

	def image
		@image = Article.image
	end

	def title
		@title = Article.title
	end

	def create
  	@article = Article.new(article_params)
 
  	if @article.save
  	redirect_to @article
  	else 
  		render 'new'
  	end
	end

	def article_params
    params.require(:article).permit(:title, :text, :image_label, :image)
  end

	def index
		@articles = Article.order('created_at DESC')

		# respond_to do |format|
		# 	format.html
		# 	format.json { render json: @articles }
		# end
	end

	def show 
 		@article = Article.find(params[:id]) # However you are retrieving your @article
	end 

	def new
		validate_user
		@article = Article.new
	end

	def edit
  	@article = Article.find(params[:id])
	end
	
	def update
  	@article = Article.find(params[:id])

  	if @article.update(article_params)
  		flash[:notice] = "Successfully updated article."
  		redirect_to @article
  	else
  		render 'edit'
  	end
  end

  def destroy
		@article = Article.find(params[:id])
		@article.destroy

		redirect_to articles_path
	end
end






