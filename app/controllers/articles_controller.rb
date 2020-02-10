# require  "prawn"
class ArticlesController < ApplicationController
	
	# def download_pdf
	# 	article = Article.find(params[:id])
	# 	send_data generate_pdf(article),filename: "#{article.name}.pdf", type: "application/pdf"
	# end
	def new
		
		@article = Article.new

	end
    
    def index
			#byebug
		# if params[:status] == "activated"
		# 	@articles = Article.activated
		# else
		# 	@articles = Article.inactivated
		# end
		  #@articles = Article.where("title LIKE  ?","%#{params[:search]}%")
		
		#if @articles.present?

			@articles= Article.all

			#render plain: "ok"
		#else
			#render plain: "not found"
		
		#end

	end

	
	
	def show
    @article = Article.find(params[:id])
  	end

	
=begin
	def search
		@article= Article.long_titles.where("title LIKE ?", "%"  + params[:id] + "%")
	end
=end

 
	def edit
		@article = Article.find(params[:id])
	end

	def create
		
		@article = Article.new(article_params)
		
				if @article.save
			#flash[:success] = "Create article"
	  				redirect_to  @article ,notice: "created"#articles_path notice
	  			else
	  				flash.now[:error] = "not created"
	  				render  "new"
	  			end
			
	end

	def update
		@article = Article.find(params[:id])
			
		if @article.update(article_params)
			flash[:success] = "you have updated "
			redirect_to @article
		else
			flash[:error] = "you have not updated #{Article.id}"
			render 'edit'
		end
	end

	def destroy
		@article = Article.find(params[:id])
		
		if @article.destroy
			flash[:success] = "Destroy article"
			redirect_to articles_path
		else
			flash[:error]= " not destroy"
			
		end
	end
		

	private
	

	def article_params
		params.require(:article).permit(:title, :text, :search) 
	end
	# def generate_pdf(article)
	# 	Prawn: :Document.new do 
	# 		text article.name, align: :center
	# 		text "Address: #{article.address}"
	# 		text "Email: #{article.title}"
	# 	end.render
	# end
			
		
end
