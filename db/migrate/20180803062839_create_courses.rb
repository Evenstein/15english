class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.timestamps
    end
    add_index :courses, :title
  end
end
