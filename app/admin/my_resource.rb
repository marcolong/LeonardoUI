ActiveAdmin.register MyResource do
  menu :if => proc{ can?(:read, MyResource) }

  permit_params do
    permitted = [:name, :fields, :my_application]
    permitted
  end

  batch_action :create_resource do |selection|
    MyResource.find(selection).each do |resource|
      if Delayed::Job.enqueue(DelayedRake.new("batch:create:my_resource", :resource_name => "#{resource.name}", :fields => "#{resource.fields_to_string}", :app_path => "#{resource.my_application.path}"))
        redirect_to admin_my_applications_path, {:notice => "Creating resource...check the log: #{(ActionController::Base.helpers.link_to("log", "/delayed_rake_#{resource.name}.log"))}, you can find it in public/delayed_rake.log!".html_safe}
      end
    end
  end

  batch_action :destroy_resource do |selection|
    MyResource.find(selection).each do |resource|
      if Delayed::Job.enqueue(DelayedRake.new("batch:destroy:my_resource", :resource_name => "#{resource.name}", :app_path => "#{resource.my_application.path}"))
        redirect_to admin_my_applications_path, {:notice => "Creating resource...check the log: #{(ActionController::Base.helpers.link_to("log", "/delayed_rake_#{resource.name}.log"))}, you can find it in public/delayed_rake.log!".html_safe}
      end
    end
  end

  controller do
    load_resource :except => :index
  end

end
