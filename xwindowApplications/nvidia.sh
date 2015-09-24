#En lubuntu no es necesario
if [ "$OS" == "debian" ]; then
#Entorno gráfico
    sudo apt-get install org lxde lxtask
# Driver nvidia GeForce 6100
    sudo apt-get install nvidia-detect
    sudo apt-get -r install linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') nvidia-kernel-dkms
    sudo mkdir -p /etc/X11/xorg.conf.d
    sudo echo -e 'Section "Device"\n\tIdentifier "My GPU"\n\tDriver "nvidia"\nEndSection' > /etc/X11/xorg.conf.d/20-nvidia.conf
#Notificador de actualizaciones
    sudo apt-get install update-notifier
    sudo reboot
fi