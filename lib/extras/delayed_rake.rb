# lib/delayed_rake.rb
class DelayedRake < Struct.new(:task,:options)
  def perform
    env_options = ''
    options && options.stringify_keys!.each do |key, value|
      env_options << " #{key}=#{value}"
    end
    #system("cd #{Rails.root} && RAILS_ENV=#{Rails.env} bundle exec rake #{task} #{env_options} >> log/delayed_rake.log")
    system("bundle exec rake #{task}[#{options["app_name"]},#{options["answers"]}] >> public/delayed_rake_#{options["app_name"]}.log")
  end
end