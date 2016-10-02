class CommentsController < ApplicationController
	before_action :set_dish

	def create  
		@comment = @dish.comments.build(comment_params)

		if @comment.save
			flash[:success] = "You commented the hell out of that post!"
			redirect_to :back
		else
			flash[:alert] = "Check the comment form, something went horribly wrong."
			render root_path
		end
	end

	def destroy  
  		@comment = @dish.comments.find(params[:id])

  		@comment.destroy
  		flash[:success] = "Comment deleted :("
  		redirect_to root_path
	end  

	private

	def comment_params  
		params.require(:comment).permit(:content)
	end

	def set_dish 
		@dish = Dish.find(params[:comment][:id])
	end  
end
