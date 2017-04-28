require '/tmp/kitchen/spec/spec_helper.rb'

describe command('redis-cli --version') do
  its(:exit_status) { should eq 0 }
end
