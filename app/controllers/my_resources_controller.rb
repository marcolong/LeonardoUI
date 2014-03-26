class MyResourcesController < InheritedResources::Base
  respond_to :html, :xml, :json
end
