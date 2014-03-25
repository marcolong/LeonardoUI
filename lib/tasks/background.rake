require 'rake'
require 'rake/testtask'
require 'rdoc/task'
require 'csv'

DEBUG = true
CRLF_WIN = "\r\n"

begin
  namespace :batch do
    namespace :create do
      desc "Import Argomenti"
      task(:myapp, [:app_name, :answers] => :environment) do |task_name,args|
        puts "Pwd: #{Dir.pwd}"              if DEBUG
        puts "APP_NAME: #{args[:app_name]}" if DEBUG
        puts "ANSWERS: #{args[:answers]}"   if DEBUG
        Dir.chdir "C:/Users/byut2448/Documents/Progetti" do
          #TODO aggiungere auth model name come parametro
          system "rails new #{args[:app_name]} -m Active_Leonardo/active_template.rb #{args[:answers]}"
        end
      end
    end
  end
end