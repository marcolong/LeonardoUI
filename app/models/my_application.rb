class MyApplication < ActiveRecord::Base
  ## Delayed Job example
  #def create_app(app_name)
  #  system("rails new #{app_name} -m active_template.rb")
  #end
  #handle_asynchronously :create_app

  ## Convert attributes to yes or no
  def answers_to_yn
    answers = ""
    [self.check_git, self.check_development, self.check_test, self.check_authentication,
     self.check_authorization, self.check_states, true, true, self.check_bundle].each { |answer| answers += answer ? "y" : "n" }
    return answers
  end

  def create_app(answers)
    Delayed::Job.enqueue(DelayedRake.new("batch:create:my_app", :app_name => "#{self.name}", :answers => "#{answers}"))
  end

end
