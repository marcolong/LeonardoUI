class MyResource < ActiveRecord::Base
  belongs_to :my_application
  serialize :fields, Hash

  def fields_to_string
    self.fields.map{|k,v| "#{k}:#{v}" }.join(' ')
  end
end
