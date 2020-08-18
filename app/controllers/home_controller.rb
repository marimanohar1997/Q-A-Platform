class HomeController < ApplicationController

	  def index
	  	if current_user
	    	@questions = current_user.questions.search(params[:search]).latest.paginate(page: params[:page], per_page: 5)
	    else
		    @questions = Question.search(params[:search]).latest.paginate(page: params[:page], per_page: 5)
			respond_to do |format|
		      format.html
		      format.json { render json: @questions }
		    end
    	end
	   end

end
