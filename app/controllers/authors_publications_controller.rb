class AuthorsPublicationsController < ApplicationController
    before_action :set_authors_publications, only: [:show, :update, :destroy]

  # POST /publications
  def create
    b = JSON.parse request.body.read
    author = b['author']
    publication = b['publication']
    #@publication = Publication.new(publication_params)

    #if @publication.save
     # render json: @publication, status: :created, location: @publication
    #else
     # render json: @publication.errors, status: :unprocessable_entity
    #end
  end
end
