class RoomsController < ApplicationController
  before_action :authenticate_user!
  def index
  	# params.each {|param, val| puts "#{param} : #{val}"}
  	#search  - room number .. .
  	# if params.has_key?(:search)
  	# 	params = search_params_cleaner(params)	
  	# end
  	search={}
  	@libraries = Library.all  #for the dropdown
  	if(params.has_key? "search")
  		params[:search].each do |key, val|
	  		unless val == ""
	  			search[key] = val
	  		end
  		end
  		puts search.to_s
  		@rooms = Room.where search
  	else
    	@rooms = Room.all
    end
  end

  def show
  	@room = Room.find(params[:id])
  end

  def search_params_cleaner(params)
  	params[:search].each do |key, val|
  		if val == ""
  			params[:search].delete(key)
  		end
  	end
  	return params
  end

  def create_datetime_from_params
  	if params[:search][:date] and params[:search][:time]
  	end
  end
end
