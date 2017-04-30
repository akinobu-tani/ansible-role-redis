require '/tmp/kitchen/spec/spec_helper.rb'

def ports
  %w(6379 6380)
end

describe command('redis-cli --version') do
  let(:path) { '/usr/local/bin:$PATH' }
  its(:exit_status) { should eq 0 }
end

describe user('redis') do
  it { should exist }
  it { should belong_to_group 'redis' }
end

ports.each do |port|
  describe service("redis-#{port}") do
    it { should be_running }
    it { should be_enabled }
  end

  describe file("/var/log/redis/redis_#{port}.log") do
    it { should exist }
  end
end

describe command('yum install -y logrotate') do
  its(:exit_status) { should eq 0 }
end

describe command('logrotate -fv /etc/logrotate.d/redis') do
  its(:exit_status) { should eq 0 }
end

ports.each do |port|
  describe file("/var/log/redis/redis_#{port}.log.1") do
    it { should exist }
  end
end
