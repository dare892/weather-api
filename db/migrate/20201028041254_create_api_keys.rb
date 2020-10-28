class CreateApiKeys < ActiveRecord::Migration[6.0]
  def change
    create_table :api_keys do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :token
      t.integer :used, default: 0
      t.datetime :expiration

      t.timestamps
    end
  end
end
