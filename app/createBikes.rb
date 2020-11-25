class CreateBikes < ActiveRecord::Migration
  validates :name, presence: true
  def change
    create_table(:bikes) do |t|
      t.string :name
      t.string :bikeType
    end
  end
end