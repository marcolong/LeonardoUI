class User < ActiveRecord::Base
  ROLES = %w[admin manager user guest]
  scope :with_role, lambda { |role| {:conditions => "roles_mask & #{2**ROLES.index(role.to_s)} > 0 "} }

  def roles=(roles)
    self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
  end
  def roles
    ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
  end
  def role_symbols
    roles.map(&:to_sym)
  end
  def role?(role)
    roles.include? role.to_s
  end
  def roles?(*roles)
    roles.each do |role|
      return true if role? role
    end
    nil
  end
  def admin?
    self.role? 'admin'
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable
end
