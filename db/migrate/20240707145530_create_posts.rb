class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :content  # contentはtext型が適切です
      t.timestamps
    end
  end
end
