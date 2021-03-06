class CreateEssays < ActiveRecord::Migration
  def change
    create_table :essays do |t|
      t.string :submitter
      t.text :comments
      t.references :prompt, index: true

      t.timestamps
    end

    add_index :essays, :prompt_id
  end
end
