Vagrant.configure(2) do |config|
  config.vm.box = 'https://f001.backblaze.com/file/com-vincecima/vagrant-boxes/u1604.box'

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.customize ["modifyvm", :id, "--cpus", 2]
    vb.customize ["modifyvm", :id, "--memory", 8192]
    vb.customize ["modifyvm", :id, "--vram", 256]
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["setextradata", :id, "GUI/MaxGuestResolution", "any"]
    vb.customize ["setextradata", :id, "CustomVideoMode1", "1024x768x32"]
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.customize ["modifyvm", :id, "--rtcuseutc", "on"]
    vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
  end

  Dir.foreach('./keys') do |item|
    next if ['.','..'].include? item
    config.vm.provision 'file', source: File.join('.', 'keys', item), destination: "~/.ssh/#{item}"
  end

  config.vm.provision 'shell', inline: '/vagrant/script/bootstrap'
end
