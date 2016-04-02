Vagrant.configure(2) do |config|
  config.vm.box = 'boxcutter/ubuntu1404-desktop'

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--cpus", 2]
    vb.customize ["modifyvm", :id, "--memory", 8192]
    vb.customize ["modifyvm", :id, "--vram", 128]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
  end

  Dir.foreach('./keys') do |item|
    next if ['.','..'].include? item
    config.vm.provision 'file', source: File.join('.', 'keys', item), destination: "~/.ssh/#{item}"
  end

  config.vm.provision 'shell', inline: '/vagrant/script/bootstrap'
end
