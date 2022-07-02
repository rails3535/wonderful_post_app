class CreateArticleTagRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :article_tag_relations, :id => false  do |t|
      t.references :article_id, null: false, foreign_key: true
      t.references :tag_id, null: false, foreign_key: true
      t.timestamps
    end

    add_index :ariticle_tag_relations, [:article_id, :tag_id], unique: true
  end
end
