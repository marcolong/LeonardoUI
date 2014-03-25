ActiveAdmin.register MyApplication do
  menu :if => proc{ can?(:read, MyApplication) }

  permit_params do
    permitted = [:name, :path, :git, :development, :test, :authentication, :authorization, :states, :state, :bundle, :bundle_path]
    permitted
  end

  batch_action :create_app do |selection|
    MyApplication.find(selection).each do |app|
      answers = ""
      [app.git, app.development, app.test, app.authentication, app.authorization, app.states, true, true, app.bundle].each do |answer|
        puts answer
        answers += answer ? "y" : "n"
      end
      if Delayed::Job.enqueue(DelayedRake.new("batch:create:myapp", :app_name => "#{app.name}", :answers => "#{answers}"))
        redirect_to admin_my_applications_path, {:notice => "Creating App...check the log : #{(ActionController::Base.helpers.link_to("log", "/delayed_rake_#{app.name}.log"))}, you can find it in public/delayed_rake.log!".html_safe}
      end
    end
  end

  controller do
    load_resource :except => :index
  end
end
