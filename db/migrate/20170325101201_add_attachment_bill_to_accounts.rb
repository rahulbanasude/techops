class AddAttachmentBillToAccounts < ActiveRecord::Migration
  def self.up
    change_table :accounts do |t|
      t.attachment :bill
    end
  end

  def self.down
    remove_attachment :accounts, :bill
  end
end
