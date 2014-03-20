require 'rails/generators/erb/scaffold/scaffold_generator'
require File.join(File.dirname(__FILE__), '../../active_leonardo')

module Erb
  module Generators
    class LeoscaGenerator <  ::Erb::Generators::ScaffoldGenerator
      include ::ActiveLeonardo::Base
      include ::ActiveLeonardo::Leosca
      #include ::ActiveLeonardo::Nested
      #puts 'erb:leosca'

      source_root File.expand_path('../templates', __FILE__)
      class_option :authorization, :type => :boolean, :default => true, :description => "Add code to manage authorization with cancan"
      #class_option :remote, :type => :boolean, :default => true, :description => "Enable ajax. You can also do later set remote to true into index view."
      #class_option :formtastic, :type => :boolean, :default => true, :description => "Create forms to manage with formtastic gem"
      #class_option :under, :type => :string, :default => "", :banner => "brand/category", :desc => "To nest a resource under another(s)"
      #class_option :leospace, :type => :string, :default => "", :banner => ":admin", :desc => "To nest a resource under namespace(s)"
      class_option :auth_class, :type => :boolean, :default => 'user', :desc => "Set the authentication class name"

      #override
      #def copy_view_files
      #  available_views.each do |view|
      #    filenames = filenames_all_formats(view, source_paths)
      #    filenames.each do |filename|
      #      #Looking for custom filename into subfolder
      #      filename_source = "#{"formtastic/" if formtastic?}#{filename}"
      #      search_into_subfolder = nil
      #      source_paths.each do |path|
      #        if File.exists?(File.join(path,filename_source))
      #          search_into_subfolder = true
      #          break
      #        end
      #      end
      #      filename_source = filename unless search_into_subfolder
      #
      #      template filename_source, File.join("app/views", base_namespaces, controller_file_path, filename)
      #    end
      #  end
      #end

      #def update_layout_html
      #  file = "app/views/layouts/_#{CONFIG[:default_style]}.html.erb"
      #  if nested?
      #    inject_into_file file, :before => "            <!-- Insert above here other #{last_parent} elements -->" do
      #      <<-FILE.gsub(/^              /, '')
      #                    #{"<% if can?(:read, #{class_name}) && controller.controller_path == '#{controller_name}' -%>" if authorization?}
      #                    <li class="active"><%= t('models.#{plural_table_name}') %></li>
      #                    <!-- Insert above here other #{singular_table_name} elements -->
      #                    #{"<% end -%>" if authorization?}
      #      FILE
      #    end if File.exists?(file)
      #  else
      #    inject_into_file file, :before => "            <!-- Insert above other elements -->" do
      #      <<-FILE.gsub(/^            /, '')
      #                  #{"<% if can?(:read, #{class_name}) -%>" if authorization?}
      #                  <li class="<%= controller.controller_path == '#{formatted_namespace_path}#{controller_name}' ? 'active' : '' %>"><a href="<%= #{list_resources_path} %>"><%= t('models.#{plural_table_name}') %></a></li>
      #                  <!-- Insert above here other #{singular_table_name} elements -->
      #                  #{"<% end -%>" if authorization?}
      #      FILE
      #    end if File.exists?(file)
      #  end
      #end

      #def update_parent_views
      #  return unless nested?
      #  file = "app/views/#{plural_last_parent}/_row_index.html.erb"
      #  inject_into_file file, :before => "<!-- Manage section, do not remove this tag -->" do
      #    <<-FILE.gsub(/^          /, '')
      #    <td><%= link_to t('models.#{plural_table_name}'), #{list_resources_path_back} %><%= link_to "", #{last_parent}_with_#{plural_table_name}_path(#{last_parent}), :id => "a_#{singular_table_name[0..5]}_\#{#{last_parent}.id}", :class =>"toggle_#{plural_table_name} desc", :remote => true %></td>
      #
      #    FILE
      #  end if File.exists?(file)
      #  available_nested_views.each do |view|
      #    filenames = filenames_all_formats(view, source_paths)
      #    filenames.each do |filename|
      #      #Looking for custom filename into subfolder
      #      filename_source = "#{"formtastic/" if formtastic?}#{filename}"
      #      search_into_subfolder = nil
      #      source_paths.each do |path|
      #        if File.exists?(File.join(path,filename_source))
      #          search_into_subfolder = true
      #          break
      #        end
      #      end
      #      filename_source = filename unless search_into_subfolder
      #
      #      template filename_source, File.join("app/views", base_namespaces, plural_last_parent, filename.sub('nested', plural_table_name))
      #    end
      #  end
      #end

    protected

      #Override
      #def available_views
      #  %w(index edit edit_multiple copy show new _form _form_multiple _fields destroy _show _list _row_index select)
      #end
      #
      #def available_nested_views
      #  %w(_nested with_nested)
      #end
      #
      #def filenames_all_formats(name, paths=[], formats=[:html, :js, nil])
      #  filenames = []
      #  paths.each do |path|
      #    formats.each do |format|
      #      filename = filename_with_extensions(format, name)
      #      if File.exists?(File.join(path, filename))
      #        filenames << filename
      #      end
      #    end
      #    break if filenames.any?
      #  end
      #  filenames
      #end
      #def filename_with_extensions(format, name, parser=:erb)
      #  [name, format, parser].compact.join(".")
      #end

    end
  end
end
