class ChangePasswordIngestToPasswordDigest < ActiveRecord::Migration
  def change
    rename_column :users, :password_ingest, :password_digest
  end
end
