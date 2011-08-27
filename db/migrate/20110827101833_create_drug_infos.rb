class CreateDrugInfos < ActiveRecord::Migration
  def self.up
    create_table :drug_infos do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :drug_infos
  end
end
