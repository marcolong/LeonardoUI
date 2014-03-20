require 'generators/rspec/integration/integration_generator'
require File.join(File.dirname(__FILE__), '../../active_leonardo')

module Rspec
  module Generators
    class LeointegrationGenerator < ::Rspec::Generators::IntegrationGenerator
      include ::ActiveLeonardo::Base
      include ::ActiveLeonardo::Leosca
      include ::ActiveLeonardo::Test
      #include ::ActiveLeonardo::Nested
      #include ::ActiveLeonardo::Nested::Test

      #puts 'Rspec:Generators:LeointegrationGenerator'
      source_paths << File.expand_path('../templates', __FILE__)

      argument :attributes, :type => :array, :default => [], :banner => "field:type field:type"

      class_option :remote, :type => :boolean, :default => true, :desc => "It checks ajax sections"
      class_option :under, :type => :string, :default => "", :banner => "brand/category", :desc => "Nested resources"
      class_option :activespace, :type => :string, :default => "admin", :banner => ":admin", :desc => "To nest a resource under namespace(s)"

      def generate_request_spec
        return unless options[:request_specs]

        template 'feature.rb',
                  #File.join('spec/requests', class_path, base_namespaces, "#{table_name}_spec.rb")
                  File.join('spec/features', class_path, "#{table_name}.rb")
        template "#{options[:activespace]}/feature.rb",
                 #File.join('spec/requests', class_path, base_namespaces, "#{table_name}_spec.rb")
                 File.join('spec/features', options[:activespace], class_path, "#{table_name}.rb")
      end

    end
  end
end
