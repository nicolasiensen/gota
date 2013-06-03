class AddFeaturedToPetition < ActiveRecord::Migration
  def change
    add_column :petitions, :featured, :boolean
  end
end
