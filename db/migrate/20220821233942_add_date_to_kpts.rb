class AddDateToKpts < ActiveRecord::Migration[6.0]
  def change
    add_column :kpts, :start_time, :datetime
  end
end
