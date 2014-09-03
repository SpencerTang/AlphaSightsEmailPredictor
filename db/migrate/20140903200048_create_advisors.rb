class CreateAdvisors < ActiveRecord::Migration
  def change
    create_table :advisors do |t|
      t.string :domain_name
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
