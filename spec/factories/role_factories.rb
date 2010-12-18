Factory.define :role do |r|
  r.name { Factory.next(:string) }
end