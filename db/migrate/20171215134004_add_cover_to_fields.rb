class AddCoverToFields < ActiveRecord::Migration[5.1]
  def change
    add_attachment :fields, :cover
  end
end
