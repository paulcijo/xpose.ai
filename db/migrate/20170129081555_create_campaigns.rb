class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :address
      t.string :location
      t.text :keywords

      t.timestamps
    end
  end
end
