# frozen_string_literal: true

# Create articles table
class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
    end
  end
end
