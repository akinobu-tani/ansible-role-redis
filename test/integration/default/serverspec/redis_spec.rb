require '/tmp/kitchen/spec/spec_helper.rb'

describe command('redis-cli --version') do
  let(:path) { '/usr/local/bin:$PATH' }
  its(:exit_status) { should eq 0 }
end
