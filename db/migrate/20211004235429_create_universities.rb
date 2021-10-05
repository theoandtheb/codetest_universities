class CreateUniversities < ActiveRecord::Migration[6.1]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :country
      t.string :alpha_two_code, limit: 2
      t.string :state_province
      t.string 'domains', array: true
      t.string 'web_pages', array: true
      t.boolean :multiple_domains, :default => false

      t.timestamps
    end
  end
end
