class AddPrivacyStatusToEvents < ActiveRecord::Migration
  def change
    add_column :events, :privacy_status, :integer, default: 0
  end
end
