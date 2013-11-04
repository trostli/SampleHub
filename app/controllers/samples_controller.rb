class SamplesController < ApplicationController

	def index
		@samples = Sample.all
	end

	def new
		@sample = Sample.new
	end

	def show
		@sample = Sample.find(params[:id])
	end

	def create
		@sample = Sample.new(params[:sample])
		if @sample.save
			redirect_to root_path
		else
			@samples = Sample.all
			render :index
		end
	end

end