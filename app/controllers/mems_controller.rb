class MemsController < ApplicationController
  
before_action :set_mem, only: [:show, :edit, :update, :delete]

	def index
		@mem = Mem.all
	end

	def show
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

  
  	private
	
	def set_mem
    	@mem = Mem.find(params[:id])
  	end

  	def mem_params
  		params.require(:mem).permit(:name, :description, :image)
  	end

end



  