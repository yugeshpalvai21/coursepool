class AddColumnsToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :short_description, :text
    add_column :courses, :language, :string, default: "english", null: false
    add_column :courses, :level, :string, default: "english", null: false
    add_column :courses, :price, :integer, default: 0, null: false
  end
end
