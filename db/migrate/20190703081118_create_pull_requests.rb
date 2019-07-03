class CreatePullRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :pull_requests do |t|
      t.string :pull_request_url
      t.string :body
      t.string :user
      t.references :developer, foreign_key: true

      t.timestamps
    end
  end
end
