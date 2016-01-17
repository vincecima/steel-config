Vagrant.configure(2) do |config|
  config.vm.box = 'boxcutter/ubuntu1404-desktop'

  config.vm.provision 'shell', inline: "/vagrant/script/bootstrap"
  config.vm.provision 'shell', inline: "/vagrant/script/apply"
  # TODO: install ssh keys
end
