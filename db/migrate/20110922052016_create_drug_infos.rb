class CreateDrugInfos < ActiveRecord::Migration
  def self.up
    create_table :drug_infos do |t|
      t.string :title
      t.text :action
      t.text :indications
      t.text :interaction

      t.timestamps
    end
  end

  def self.down
    drop_table :drug_infos
  end
end
