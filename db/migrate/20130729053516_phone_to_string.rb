class PhoneToString < ActiveRecord::Migration
  def self.up
   remove_column :physicians, :phone
   add_column :physicians, :phone, :string
  end
end
