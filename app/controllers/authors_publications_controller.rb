class AuthorsPublicationsController < ApplicationController
    before_action :set_authors_publications, only: [:show, :update, :destroy]

  # POST /publications
  def create
    auth = params[:author]
    pub = params[:publication]
    a = Author.new
    a.first_name = auth[:first_name]
    a.last_name = auth[:last_name]
    a.code = auth[:code]

    p = Publication.new
    p.title = pub[:title]
    p.code = pub[:code]
    p.date = pub[:date]
    p.type_p = pub[:type_p]

    Author.transaction do 
       p.save!
       a.save!
       a.publications << p
    end    

    if a.save
      render json: a, status: :created, location: a
    else
      render json: a.errors, status: :unprocessable_entity
    end
  end
end
