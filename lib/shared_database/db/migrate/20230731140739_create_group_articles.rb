class CreateGroupArticles < ActiveRecord::Migration
  def change
    create_table :group_articles do |t|
      t.references :group, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
