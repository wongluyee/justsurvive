class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :username
      t.float :rating
      t.text :comment
      t.date :reviewed_on, default: Date.today
      t.references :experience, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
