class RolifyCreateRoles < ActiveRecord::Migration[5.1]
  def change
    create_table(:roles) do |t|
      t.string :name
      t.references :resource, :polymorphic => true

      t.timestamps
    end

    create_table(:user_admins_roles, :id => false) do |t|
      t.references :user_admin
      t.references :role
    end
    
    add_index(:roles, [ :name, :resource_type, :resource_id ])
    add_index(:user_admins_roles, [ :user_admin_id, :role_id ])
  end
end
