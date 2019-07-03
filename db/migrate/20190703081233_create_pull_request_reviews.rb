class CreatePullRequestReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :pull_request_reviews do |t|
      t.string :pull_request_url
      t.string :body
      t.string :user
      t.references :developer, foreign_key: true

      t.timestamps
    end
  end
end
