# lib/delayed_rake.rb
class DelayedRake < Struct.new(:task,:options)
  def perform
    env_options = ''
    options && options.stringify_keys!.each do |key, value|
      env_options << " #{key}=#{value}"
    end
    puts "TASK #{task}"
    puts "OPTIONS #{options}"
    case task
      when "batch:create:my_resource"
        system("bundle exec rake #{task}[#{options["resource_name"]},'#{options["fields"]}',#{options["app_path"]}] >> public/#{options["resource_name"]}.log")
      when "batch:destroy:my_resource"
        system("bundle exec rake #{task}[#{options["resource_name"]},#{options["app_path"]}] >> public/#{options["resource_name"]}.log")
      when "batch:create:my_app"
        system("bundle exec rake #{task}[#{options["app_name"]},#{options["answers"]}] >> public/#{options["app_name"]}.log")
    end
  end
end