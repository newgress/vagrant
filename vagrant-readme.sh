# In order to run vagrant you will need virtualbox.

    sudo apt install virtualbox

# You will then need to install vagrant.
    sudo apt install vagrant

# Verify that vagrant is installed
    vagrant --version
#############################################################################
# This is the documentation for vagrant. https://www.vagrantup.com/docs/
#
# Once you install vagrant. You will need to find a virtualbox to use.
# https://app.vagrantup.com/boxes/search
#############################################################################
# There may be an issue with permissions on vagrant.
# https://www.vagrantup.com/docs/boxes/base.html
# This is important!. Many aspects of Vagrant expect the default SSH user to
# have passwordless sudo configured. This lets Vagrant configure networks,
# mount synced folders, install software, and more.
    sudo visudo /etc/sudoers.d/vagrant
#   add the line below to the bottom of the file.
#  BE VERY CAREFUL NOT TO MAKE A MISTAKE. IT WILL LOCK YOU OUT OF SUDO!!!!!!!!!
#  Read up on sudoers
     vagrant ALL=(ALL) NOPASSWD: ALL
# alt Route : echo vagrant ALL=NOPASSWD:ALL > /etc/sudoers.d/vagrant

###############################################################################
# Video to help you through the process https://www.youtube.com/watch?v=PmOMc4zfCSw

    # eg: vagrant box add USER/BOX
    vagrant box bento/ubuntu-16.04

# This will download the image and store it on your computer.

    vagrant init ubuntu-16.04

# This will create the vagrant file to get you started.

# It is recommended that your setup a packer or provisioner from this point on.
# Setup a provisioner https://www.vagrantup.com/docs/provisioning/
# Setup a Packer https://www.packer.io/docs/index.html

# At this point you will want to bring up the Virtual Machine.
    vagrant up

######################### IMPORTANT #################
# If your provisions are set within Vagrantfile then run:
    vagrant provision
# That will run the script to provision the software.
# If you are reading this file then there is probably already a provision set.
# without the provision the server will not bring up the service to view the site.

# Once you are Make sure the service within the VM like  apache or nginx is running.
# The provisioner script will do this automatically.
    sudo apt-get update
    sudo apt-get install -y nginx
    sudo service nginx start
######################################################

# You will then want to reload the vm by running:
    vagrant reload

# At this point you if you haven't provisioned the file then you will need to run the machine manually.
# In order to do that you will need to create a connection with ssh.
    vagrant ssh
#############  WARNING I personally ran into issues with the SSH keys that are inernally stored on my computer.
#############  Your system may be different.
#############  ssh-keygen
#############  ssh-add ~/.ssh/id_rsa
#############
#############  You can bypass it by adding these into the vagrantfile.
#############
#############  config.ssh.username = 'root'
#############  config.ssh.password = 'vagrant'
#############  config.ssh.insert_key = 'true'

#At this point you should be able to load your ip and see the welcome page.

#In order to setup a domain to your ip you have to load the following command on your local machine.
# this may vary depeninding on what system you are on.  For linux it is:

    sudo bash -c "echo '192.168.33.10   local.example.com'  >>  /etc/hosts"
