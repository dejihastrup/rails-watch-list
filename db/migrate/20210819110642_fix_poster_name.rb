class FixPosterName < ActiveRecord::Migration[6.0]
  def change
    rename_column :movies, :poster, :poster_url
  end
end
