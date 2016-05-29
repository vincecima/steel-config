Vagrant.configure(2) do |config|
  config.vm.box = 'boxcutter/ubuntu1604'

  config.vm.provider 'virtualbox' do |vb|
    vb.customize ["modifyvm", :id, "--cpus", 2]
    vb.customize ["modifyvm", :id, "--memory", 4096]
    vb.customize ["modifyvm", :id, "--rtcuseutc", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

  # Jekyll
  config.vm.network "forwarded_port", guest: 4000, host: 4000

  Dir.foreach('./keys') do |item|
    next if ['.','..'].include? item
    config.vm.provision 'file', source: File.join('.', 'keys', item), destination: "~/.ssh/#{item}"
  end
  config.vm.synced_folder File.join(Dir.home, 'Dropbox'), '/home/vagrant/Dropbox'

  config.vm.provision 'shell', inline: '/vagrant/script/bootstrap'
end
