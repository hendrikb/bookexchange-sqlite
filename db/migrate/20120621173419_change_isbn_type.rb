class ChangeIsbnType < ActiveRecord::Migration
  def up
	  change_column(:books, :isbn, :decimal, {precision: 10, scale: 0})
  end

  def down
	  change_column(:books, :isbn, :integer, {})
  end
end
