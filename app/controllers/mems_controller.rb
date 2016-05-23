class MemsController < ApplicationController
 
	before_action :authenticate_user!, except: [:index, :show] 
	before_action :set_mem, only: [:show, :edit, :update, :delete]

	def index
		@mem = Mem.active
	end

	def show
    @post = Post.new
 	end

    def new
		@mem = Mem.new
  	end

	def create
		@mem = Mem.new(mem_params)
		if @mem.save
      		flash[:notice] = 'Mem was created'
    	end
    	redirect_to action:'index'
  	end

	def edit
  	end

  	def update
    	if @mem.update_attributes(mem_params)
      		flash[:notice] = 'Mem was updated'
    	end
    	redirect_to action:'index'
  	end

	def delete
  	end

	def destroy
    	mem = Mem.find(params[:id]).destroy
    	flash[:notice] = "Mem #{mem.name} was deleted"
    	redirect_to action:'index'
  	end

  	def my
  		@mem = current_user.mems.active
  		render :index
    end

  	def inactive
  		@mem = Mem.inactive
  	end
  
  	private
	
	def set_mem
    	@mem = Mem.find(params[:id])
  	end

  	def mem_params
  		params.require(:mem).permit(:name, :description, :image, :user_id)
  	end

end



  