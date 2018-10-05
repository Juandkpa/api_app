class AlterTableAuthorsPublications < ActiveRecord::Migration[5.2]
  def change
    rename_table :author_publications, :authors_publications
  end
end
