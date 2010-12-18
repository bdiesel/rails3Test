Factory.define :user do |u|
  u.email { Factory.next(:email) }
  u.password 'password'
  u.password_confirmation 'password'
  u.roles { |v| [Factory(:role, :owner_type => v.owner.type)] }
end