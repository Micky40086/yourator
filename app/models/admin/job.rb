class Admin::Job < ApplicationRecord
  belongs_to :company, :class_name => "Admin::Company", :foreign_key => "admin_company_id"
end
