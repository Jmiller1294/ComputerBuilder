class CreateComputers < ActiveRecord::Migration[6.0]
  def change
    create_table :computers do |t|
      t.string :operating_system
      t.string :cpu
      t.string :ram
      t.string :gpu
      t.string :motherboard_type
      t.string :cooling_type
      t.string :case_size
      t.belongs_to :user, foreign_key: true
      t.belongs_to :order, foreign_key: true

      t.timestamps
    end
  end
end
