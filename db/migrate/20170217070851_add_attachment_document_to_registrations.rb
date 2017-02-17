class AddAttachmentDocumentToRegistrations < ActiveRecord::Migration
  def self.up
    change_table :registrations do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :registrations, :document
  end
end
