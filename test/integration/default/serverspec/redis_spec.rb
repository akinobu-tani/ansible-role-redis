require '/tmp/kitchen/spec/spec_helper.rb'

describe command('redis-cli --version') do
  let(:path) { '/usr/local/bin:$PATH' }
  its(:exit_status) { should eq 0 }
end

describe service('redis-6379') do
  it { should be_running }
  it { should be_enabled }
end

describe user('redis') do
  it { should exist }
  it { should belong_to_group 'redis' }
end

describe file('/var/log/redis/redis_6379.log') do
  it { should exist }
end

describe command('yum install -y logrotate') do
  its(:exit_status) { should eq 0 }
end

describe command('logrotate -fv /etc/logrotate.d/redis') do
  its(:exit_status) { should eq 0 }
end

describe file('/var/log/redis/redis_6379.log.1') do
  it { should exist }
end
