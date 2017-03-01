class AddUpvotesToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :upvotes, :integer, default: 0
  end
end
