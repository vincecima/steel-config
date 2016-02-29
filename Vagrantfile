Vagrant.configure(2) do |config|
  config.vm.box = 'boxcutter/ubuntu1404-desktop'

  config.vm.provider 'vmware_workstation' do |v|
    v.gui = true
    v.vmx['memsize'] = '8192'
    v.vmx['numvcpus'] = '2'
    v.vmx['vhv.enable'] = 'TRUE'
    v.box_url = 'https://atlas.hashicorp.com/boxcutter/boxes/ubuntu1404-desktop/versions/2.0.13/providers/vmware_desktop.box'
  end

  config.vm.provider 'virtualbox' do |v|
    v.gui = true
    v.memory = 8192
    v.cpus = 2
  end

  Dir.foreach('./keys') do |item|
    next if ['.','..'].include? item
    config.vm.provision 'file', source: File.join('.', 'keys', item), destination: "~/.ssh/#{item}"
  end

  config.vm.provision 'shell', inline: '/vagrant/script/bootstrap'
end
