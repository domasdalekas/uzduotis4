# frozen_string_literal: true

# creates bikes to database
class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :title
      t.string :type

      t.timestamps
    end
  end
end
