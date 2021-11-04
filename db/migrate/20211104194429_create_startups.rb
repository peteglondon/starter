class CreateStartups < ActiveRecord::Migration[6.1]
  def change
    create_table :startups, id: :uuid, default: -> { "gen_random_uuid()" } do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
