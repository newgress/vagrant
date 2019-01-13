# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

# require 'yaml'
# host_dir = File.dirname(File.expand_path(__FILE__))
# vconfig = YAML.load_file("#{host_dir}/config.yml")
# if File.exist?("#{host_dir}/config.local.yml")
  # vconfig.merge!(YAML.load_file("#{host_dir}/config.local.yml"))
# end

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "bento/ubuntu-16.04"


  # Copy .bash_profile for any presets within the terminal.
  config.vm.provision "file", source: ".bash_profile", destination: "~/.bash_profile"


  # Copy SSH private key (aka, fake ssh agent forwarding).
  config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"

  ##################### Bypass the SSH key ################################
  #config.ssh.username = 'root'
  #config.ssh.password = 'vagrant'
  #config.ssh.insert_key = 'true'
  #########################################################################

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
    config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Copy SSH private key (aka, fake ssh agent forwarding).
  # config.vm.provision "file", source: "~/.ssh/id_rsa", destination: "~/.ssh/id_rsa"




  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
   config.vm.provision "shell", inline: <<-SHELL
     sudo apt-get update
     sudo apt-get install -y nginx
     sudo service nginx start
   SHELL




  # If you use a remote script as part of your provisioning process, you can pass in its URL as the path argument as well
  #  Vagrant.configure("2") do |config|
  #    config.vm.provision "shell", path: "https://newgress.com/provisioner.sh"
  #  end

  # Provision with Ansible.
  #config.vm.provision "ansible" do |ansible|
    #ansible.playbook = "playbook.yml"
    #ansible.extra_vars = {vconfig: vconfig}
  #end

  # Provision with Docker
  #Vagrant.configure("2") do |config|
    #config.vm.provision "docker" do |d|
      #  d.pull_images "ubuntu"
      #  d.pull_images "vagrant"
    #end
  # end


##########################################################################################################################
####################################### All documentation allowed by Vagrantfile #########################################
##################################### Read the documention to seup the box properly  #####################################
##########################################################################################################################

# config.vm.base_mac # (string) - The MAC address to be assigned to the default NAT interface on the guest. Support for this option is provider dependent.

# config.vm.base_address # (string) - The IP address to be assigned to the default NAT interface on the guest. Support for this option is provider dependent.

# config.vm.boot_timeout # (integer) - The time in seconds that Vagrant will wait for the machine to boot and be accessible. By default this is 300 seconds.

# config.vm.box # (string) - This # configures what box the machine will be brought up against. The value here should be the name of an installed box or a shorthand name of a box in HashiCorp's Vagrant Cloud.

# config.vm.box_check_update # (boolean) - If true, Vagrant will check for updates to the # configured box on every vagrant up. If an update is found, Vagrant will tell the user. By default this is true. Updates will only be checked for boxes that properly support updates # (boxes from HashiCorp's Vagrant Cloud or some other versioned box).

# config.vm.box_download_checksum # (string) - The checksum of the box specified by # config.vm.box_url. If not specified, no checksum comparison will be done. If specified, Vagrant will compare the checksum of the downloaded box to this value and error if they do not match. Checksum checking is only done when Vagrant must download the box. If this is specified, then # config.vm.box_download_checksum_type must also be specified.

# config.vm.box_download_checksum_type # (string) - The type of checksum specified by # config.vm.box_download_checksum # (if any). Supported values are currently "md5", "sha1", and "sha256".

# config.vm.box_download_client_cert # (string) - Path to a client certificate to use when downloading the box, if it is necessary. By default, no client certificate is used to download the box.

# config.vm.box_download_ca_cert # (string) - Path to a CA cert bundle to use when downloading a box directly. By default, Vagrant will use the Mozilla CA cert bundle.

# config.vm.box_download_ca_path # (string) - Path to a directory containing CA certificates for downloading a box directly. By default, Vagrant will use the Mozilla CA cert bundle.

# config.vm.box_download_insecure # (boolean) - If true, then SSL certificates from the server will not be verified. By default, if the URL is an HTTPS URL, then SSL certs will be verified.

# config.vm.box_download_location_trusted # (boolean) - If true, then all HTTP redirects will be treated as trusted. That means credentials used for initial URL will be used for all subsequent redirects. By default, redirect locations are untrusted so credentials # (if specified) used only for initial HTTP request.

# config.vm.box_url # (string, array of strings) - The URL that the # configured box can be found at. If # config.vm.box is a shorthand to a box in HashiCorp's Vagrant Cloud then this value does not need to be specified. Otherwise, it should point to the proper place where the box can be found if it is not installed. This can also be an array of multiple URLs. The URLs will be tried in order.

#Note that any client certificates, insecure download settings, and so on will apply to all URLs in this list. The URLs can also be local files by using the file:// scheme. For example: "file:///tmp/test.box".

# config.vm.box_version # (string) - The version of the box to use. This defaults to ">= 0" # (the latest version available). This can contain an arbitrary list of constraints, separated by commas, such as: >= 1.0, < 1.5. When constraints are given, Vagrant will use the latest available box satisfying these constraints.

# config.vm.communicator # (string) - The communicator type to use to connect to the guest box. By default this is "ssh", but should be changed to "winrm" for Windows guests.

# config.vm.graceful_halt_timeout # (integer) - The time in seconds that Vagrant will wait for the machine to gracefully halt when vagrant halt is called. Defaults to 60 seconds.

# config.vm.guest # (string, symbol) - The guest OS that will be running within this machine. This defaults to :linux, and Vagrant will auto-detect the proper distro. However, this should be changed to :windows for Windows guests. Vagrant needs to know this information to perform some guest OS-specific things such as mounting folders and # configuring networks.

# config.vm.hostname # (string) - The hostname the machine should have. Defaults to nil. If nil, Vagrant will not manage the hostname. If set to a string, the hostname will be set on boot. If set, Vagrant will update /etc/hosts on the guest with the # configured hostname.

# config.vm.ignore_box_vagrantfile # (boolean) - If true, Vagrant will not load the the settings found inside a boxes Vagrantfile, if present. Defaults to false.

# config.vm.network - # configures networks on the machine. Please see the networking page for more information.

# config.vm.post_up_message # (string) - A message to show after vagrant up. This will be shown to the user and is useful for containing instructions such as how to access various components of the development environment.

# config.vm.provider # # configures provider-specific # configuration, which is used to modify settings which are specific to a certain provider. If the provider you are # configuring does not exist or is not setup on the system of the person who runs vagrant up, Vagrant will ignore this # configuration block. This allows a Vagrantfile that is # configured for many providers to be shared among a group of people who may not have all the same providers installed.

# config.vm.provision # # configures provisioners on the machine, so that software can be automatically installed and # configured when the machine is created. Please see the page on provisioners for more information on how this setting works.

# config.vm.synced_folder # # configures synced folders on the machine, so that folders on your host machine can be synced to and from the guest machine. Please see the page on synced folders for more information on how this setting works.

# config.vm.usable_port_range # (range) - A range of ports Vagrant can use for handling port collisions and such. Defaults to 2200..2250.




###########################################################################################################################
###############################    The following are SSH vagrant commands   ###############################################
###############################    You can set the vagrant ssh password below to avoid ssh keys.###########################
###########################################################################################################################
# config.ssh.compression # (boolean) - If false, this setting will not include the compression setting when ssh'ing into a machine. If this is not set, it will default to true and Compression=yes will be enabled with ssh.

# config.ssh.# config # (string) - Path to a custom ssh_# config file to use for # configuring the SSH connections.

# config.ssh.dsa_authentication # (boolean) - If false, this setting will not include DSAAuthentication when ssh'ing into a machine. If this is not set, it will default to true and DSAAuthentication=yes will be used with ssh.

# config.ssh.export_command_template # (string) - The template used to generate exported environment variables in the active session. This can be useful when using a Bourne incompatible shell like C shell. The template supports two variables which are replaced with the desired environment variable key and environment variable value: %ENV_KEY% and %ENV_VALUE%. The default template is:

# config.ssh.export_command_template = 'export %ENV_KEY%="%ENV_VALUE%"'
# config.ssh.extra_args # (array of strings) - This settings value is passed directly into the ssh executable. This allows you to pass any arbitrary commands to do things such as reverse tunneling down into the ssh program. These options can either be single flags set as strings such as "-6" for IPV6 or an array of arguments such as ["-L", "8008:localhost:80"] for enabling a tunnel from host port 8008 to port 80 on guest.

# config.ssh.forward_agent # (boolean) - If true, agent forwarding over SSH connections is enabled. Defaults to false.

# config.ssh.forward_env # (array of strings) - An array of host environment variables to forward to the guest. If you are familiar with OpenSSH, this corresponds to the SendEnv parameter.

# config.ssh.forward_env = ["CUSTOM_VAR"]
# config.ssh.forward_x11 # (boolean) - If true, X11 forwarding over SSH connections is enabled. Defaults to false.

# config.ssh.guest_port # (integer) - The port on the guest that SSH is running on. This is used by some providers to detect forwarded ports for SSH. For example, if this is set to 22 # (the default), and Vagrant detects a forwarded port to port 22 on the guest from port 4567 on the host, Vagrant will attempt to use port 4567 to talk to the guest if there is no other option.

# config.ssh.host # (string) - The hostname or IP to SSH into. By default this is empty, because the provider usually figures this out for you.

# config.ssh.insert_key # (boolean) - If true, Vagrant will automatically insert a keypair to use for SSH, replacing Vagrant's default insecure key inside the machine if detected. By default, this is true.

#This only has an effect if you do not already use private keys for authentication or if you are relying on the default insecure key. If you do not have to care about security in your project and want to keep using the default insecure key, set this to false.

# config.ssh.keep_alive # (boolean) - If true, this setting SSH will send keep-alive packets every 5 seconds by default to keep connections alive.

# config.ssh.keys_only # (boolean) - Only use Vagrant-provided SSH private keys # (do not use any keys stored in ssh-agent). The default value is true.

# config.ssh.paranoid # (boolean) - Perform strict host-key verification. The default value is false.

#Deprecation: The # config.ssh.paranoid option is deprecated and will be removed in a future release. Please use the # config.ssh.verify_host_key option instead.

# config.ssh.password # (string) - This sets a password that Vagrant will use to authenticate the SSH user. Note that Vagrant recommends you use key-based authentication rather than a password # (see private_key_path) below. If you use a password, Vagrant will automatically insert a keypair if insert_key is true.

# config.ssh.port # (integer) - The port to SSH into. By default this is port 22.

# config.ssh.private_key_path # (string, array of strings) - The path to the private key to use to SSH into the guest machine. By default this is the insecure private key that ships with Vagrant, since that is what public boxes use. If you make your own custom box with a custom SSH key, this should point to that private key. You can also specify multiple private keys by setting this to be an array. This is useful, for example, if you use the default private key to bootstrap the machine, but replace it with perhaps a more secure key later.

# config.ssh.proxy_command # (string) - A command-line command to execute that receives the data to send to SSH on stdin. This can be used to proxy the SSH connection. %h in the command is replaced with the host and %p is replaced with the port.

# config.ssh.pty # (boolean) - If true, pty will be used for provisioning. Defaults to false.

#This setting is an advanced feature that should not be enabled unless absolutely necessary. It breaks some other features of Vagrant, and is really only exposed for cases where it is absolutely necessary. If you can find a way to not use a pty, that is recommended instead.

#When pty is enabled, it is important to note that command output will not be streamed to the UI. Instead, the output will be delivered in full to the UI once the command has completed.

# config.ssh.remote_user # (string) - The "remote user" value used to replace the %r character# (s) used within a # configured ProxyCommand. This value is only used by the net-ssh library # (ignored by the ssh executable) and should not be used in general. This defaults to the value of # config.ssh.username.

# config.ssh.shell # (string) - The shell to use when executing SSH commands from Vagrant. By default this is bash -l. Note that this has no effect on the shell you get when you run vagrant ssh. This # configuration option only affects the shell to use when executing commands internally in Vagrant.

# config.ssh.sudo_command # (string) - The command to use when executing a command with sudo. This defaults to sudo -E -H %c. The %c will be replaced by the command that is being executed.

# config.ssh.username # (string) - This sets the username that Vagrant will SSH as by default. Providers are free to override this if they detect a more appropriate user. By default this is "vagrant", since that is what most public boxes are made as.

# config.ssh.verify_host_key # (string, symbol) - Perform strict host-key verification. The default value is :never.


###########################################################################################################################
##################################### Below are Vagrant commands run directly over the system #############################
##################################### You may need the info below to build out the share system ###########################
###########################################################################################################################

# config.vagrant.host (string, symbol) - This sets the type of host machine that is running Vagrant. By default this is :detect, which causes Vagrant to auto-detect the host. Vagrant needs to know this information in order to perform some host-specific things, such as preparing NFS folders if they're enabled. You should only manually set this if auto-detection fails.

# config.vagrant.plugins - (string, array, hash) - Define plugin, list of plugins, or definition of plugins to install for the local project. Vagrant will require these plugins be installed and available for the project. If the plugins are not available, it will attempt to automatically install them into the local project. When requiring a single plugin, a string can be provided:

# config.vagrant.plugins = "vagrant-plugin"
#If multiple plugins are required, they can be provided as an array:

# config.vagrant.plugins = ["vagrant-plugin", "vagrant-other-plugin"]
#Plugins can also be defined as a Hash, which supports setting extra options for the plugins. When a Hash is used, the key is the name of the plugin, and the value is a Hash of options for the plugin. For example, to set an explicit version of a plugin to install:

# config.vagrant.plugins = {"vagrant-scp" => {"version" => "1.0.0"}}
#Supported options are:

        #entry_point - Path for Vagrant to load plugin
        #sources - Custom sources for downloading plugin
        #version - Version constraint for plugin

# config.vagrant.sensitive - (string, array) - Value or list of values that should not be displayed in Vagrant's output. Value(s) will be removed from Vagrant's normal UI output as well as logger output.

# config.vagrant.sensitive = ["MySecretPassword", ENV["MY_TOKEN"]]


end
