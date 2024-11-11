class PagesController < ApplicationController
  def about
  end

  def contact

    @members = ["Margarida", "João", "Rita", "Ricardo", "Miguel", "David"]

    search = params[:member]

    if search
      @members = @members.select {|member| member.start_with? search.capitalize }
    end

  end

  def home
  end
end
