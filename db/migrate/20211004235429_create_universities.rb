class CreateUniversities < ActiveRecord::Migration[6.1]
  def change
    create_table :universities do |t|
      t.string :name
      t.string :country
      t.string :alpha_two_code, limit: 2
      t.string :state_province

      t.timestamps
    end
    add_index :universities, :alpha_two_code
  end
end
