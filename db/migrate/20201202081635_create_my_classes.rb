class CreateMyClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :my_classes do |t|
      t.string :my_class_title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
