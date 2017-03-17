class StaticPagesController < ApplicationController

  def index
    respond_to do |format|
      format.js{
        @result = params[:q].permutation.to_a.map{|i| i.join;}
      }
      format.html {
      }
    end 

  end

end