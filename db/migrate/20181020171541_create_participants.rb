class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.references :activity, foreign_key: true
      t.string :name, null: false
      t.boolean :active, null: false, default: false

      t.timestamps
    end
  end
end
