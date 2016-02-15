Vagrant.configure(2) do |config|
  config.vm.box = 'boxcutter/ubuntu1404-desktop'

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
