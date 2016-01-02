# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = 'boxcutter/ubuntu1404-desktop'
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.provision 'file', source: '.', destination: '~'
  # Copying the file from Windows to Linux loses the permissions, correct that here
  config.vm.provision 'shell', inline: 'chmod 744 ~/devbox/scripts/*', privileged: false
end
