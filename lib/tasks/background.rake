require 'rake'
require 'rake/testtask'
require 'rdoc/task'
require 'csv'

DEBUG = true
HOMEROOT = "C:/Users/byut2448/Documents/Progetti"
CRLF_WIN = "\r\n"

begin
  namespace :batch do
    namespace :create do
      desc "Create App"
      task(:my_app, [:app_name, :answers] => :environment) do |task_name,args|
        Dir.chdir HOMEROOT do
          puts "Pwd: #{Dir.pwd}"              if DEBUG
          puts "APP_NAME: #{args[:app_name]}" if DEBUG
          puts "ANSWERS: #{args[:answers]}"   if DEBUG
          #TODO aggiungere auth model name come parametro
          puts "rails new #{args[:app_name]} -m Active_Leonardo/active_template.rb #{args[:answers]}"
          system "rails new #{args[:app_name]} -m Active_Leonardo/active_template.rb #{args[:answers]}"
        end
      end

      desc "Create Resource"
      task(:my_resource, [:resource_name, :fields, :app_path] => :environment) do |task_name,args|
        puts "Pwd: #{Dir.pwd}"                        if DEBUG
        puts "Resource NAME: #{args[:resource_name]}" if DEBUG
        puts "App Path: #{args[:app_path]}"           if DEBUG
        puts "Fields: #{args[:fields]}"               if DEBUG
        Dir.chdir args[:app_path] do
          system "rails g leosca #{args[:resource_name]} #{args[:fields]}"
        end
      end
    end


    namespace :destroy do
      desc "Destroy Resource"
      task(:my_resource, [:resource_name, :app_path] => :environment) do |task_name,args|
        puts "Pwd: #{Dir.pwd}"                        if DEBUG
        puts "Resource NAME: #{args[:resource_name]}" if DEBUG
        puts "App Path: #{args[:app_path]}"           if DEBUG
        Dir.chdir args[:app_path] do
          system "rails d leosca #{args[:resource_name]}"
        end
      end
    end
  end
end