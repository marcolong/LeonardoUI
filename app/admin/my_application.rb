ActiveAdmin.register MyApplication do
  menu :if => proc{ can?(:read, MyApplication) }

  permit_params do
    permitted = [:name, :path, :check_git, :check_development, :check_test, :check_authentication,
                 :check_authorization, :check_states, :state, :check_bundle, :bundle_path]
    permitted
  end

  batch_action :create_app do |selection|
    MyApplication.find(selection).each do |app|
      # I should pass a string with y/n instead of true/false
      answers = app.answers_to_yn
      if app.create_app(answers)
        redirect_to admin_my_applications_path, {:notice => "Creating App...check the log : #{(ActionController::Base.helpers.link_to("log", "/delayed_rake_#{app.name}.log"))}, you can find it in public/delayed_rake.log!".html_safe}
      end
    end
  end

  controller do
    load_resource :except => :index
  end
end
