class AddAttachmentResimToAlimsatims < ActiveRecord::Migration[5.2]
  def self.up
    change_table :alimsatims do |t|
      t.attachment :resim
    end
  end

  def self.down
    remove_attachment :alimsatims, :resim
  end
end
