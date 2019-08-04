class AddEnabledToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :admin_companies, :enabled, :boolean, :default => false
  end
end
