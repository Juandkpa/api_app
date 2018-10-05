class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :code
      t.string :title
      t.string :date
      t.string :type_p

      t.timestamps
    end
  end
end
