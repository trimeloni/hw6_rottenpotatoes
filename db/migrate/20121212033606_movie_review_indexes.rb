class MovieReviewIndexes < ActiveRecord::Migration
  def up
    add_index(:reviews,:moviegoer_id)
    add_index(:reviews,:movie_id)
  end

  def down
    remove_index(:reviews,:column => moviegoer_id)
    remove_index(:reviews,:column => movie_id)
  end
end
