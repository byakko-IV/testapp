class EntriesController < ApplicationController
	respond_to :json

	def index
		@entries = Entry.all
		respond_with @entries 
	end

	def show
		respond_with Entry.find(params[:id])
	end

	def create
		respond_with Entry.create(params[:entry]) 
	end

	def update
		respond_with Entry.update(params[:id], params{:entry}) 
	end

	def destroy
		respond_with Entry.destroy(params[:id]) 
	end

end
