class CreateTableAuthorPublications < ActiveRecord::Migration[5.2]
  def change
    create_table :author_publications, id: false do |t|
      t.belongs_to :author, index: true
      t.belongs_to :publication, index: true
    end
  end
end
