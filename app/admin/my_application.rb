ActiveAdmin.register MyApplication do
  menu :if => proc{ can?(:read, MyApplication) }

  permit_params do
    permitted = [:name, :path, :git, :development, :test, :authentication, :authorization, :states, :state, :bundle, :bundle_path]
    permitted
  end

  controller do
    load_resource :except => :index

    def create_app(app_name)
      system "rails new #{app_name} -m active_template.rb"
      para "OK"
    end
  end
  
end
