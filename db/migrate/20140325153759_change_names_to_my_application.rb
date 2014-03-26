class ChangeNamesToMyApplication < ActiveRecord::Migration
  def change
    rename_column :my_applications,:git           , :check_git
    rename_column :my_applications,:development   , :check_development
    rename_column :my_applications,:test          , :check_test
    rename_column :my_applications,:authentication, :check_authentication
    rename_column :my_applications,:authorization , :check_authorization
    rename_column :my_applications,:states        , :check_states
    rename_column :my_applications,:bundle        , :check_bundle
  end
end
