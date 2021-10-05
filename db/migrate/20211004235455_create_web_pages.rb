class CreateWebPages < ActiveRecord::Migration[6.1]
  def change
    create_table :web_pages do |t|
      t.string :web_page
      t.references :university, null: false, foreign_key: true

      t.timestamps
    end
  end
end
