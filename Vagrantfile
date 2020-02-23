Vagrant.configure("2") do |config|
  config.vm.define "ansible-agent" do |agent|
	agent.vm.box = "centos/7"
	agent.vm.hostname = "ansible-agent"
	agent.vm.network "private_network", ip: "172.42.42.201"
	agent.vm.provider "virtualbox" do |v|
	  v.memory = 1000
	  v.cpus = 2
	end
	agent.vm.provision "shell", inline: <<-SHELL
	sed -i 's/^PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
	systemctl reload sshd
	SHELL
  end
  config.vm.define "ansible-server" do |master|
	master.vm.box = "centos/7"
	master.vm.hostname = "ansible-server"
	master.vm.network "private_network", ip: "172.42.42.200"
	master.vm.provider "virtualbox" do |v|
	  v.memory = 2500
	  v.cpus = 2
	end
	master.vm.provision "shell", path: "ansible_server_startup.sh"
  end
end
