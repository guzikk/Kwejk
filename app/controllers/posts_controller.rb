class PostsController < ApplicationController

	def create
		@post = Post.new(post_params)
		@mem = Mem.find(@post.mem_id)
		if @post.save
			redirect_to @mem
		else
			flash[:notice] = "I can't save post"
		end	

	end

	private
	def post_params
		params.require(:post).permit(:content, :user_id, :mem_id)
	end

end
