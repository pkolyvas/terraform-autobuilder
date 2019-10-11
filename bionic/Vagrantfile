Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.define "terraform-build-env"
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision :shell, privileged: false, path: "terraform.sh"
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "workspace/", "/home/vagrant/workspace"
end
