Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false
  config.vm.provider "virtualbox" do |v|
    # mysql requires at least that much
    v.memory = 1024
    v.cpus = 2
  end
end
