Vagrant.configure(2) do |config|
  config.vm.box = 'boxcutter/ubuntu1404-desktop'

  Dir.foreach('./keys') do |item|
    next if ['.','..'].include? item
    config.vm.provision 'file', source: File.join('.', 'keys', item), destination: "~/.ssh/#{item}"
  end

  config.vm.provision 'shell', inline: '/vagrant/script/bootstrap'
end
