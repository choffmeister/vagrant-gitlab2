VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "debian-7"
  config.vm.box_url = "http://pub.sebian.fr/pub/vagrant/debian-wheezy-amd64.box"

  config.vm.network "private_network", ip: "10.10.10.10"
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--cpus", 2, "--memory", "2048"]
  end

  config.vm.provision "shell", path: "init.sh"
end
