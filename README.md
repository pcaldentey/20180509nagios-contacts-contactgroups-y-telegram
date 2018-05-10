# 20180509nagios-contacts-contactgroups-y-telegram

Configuración básica de nagios con varios grupos de telegram usando telegrambots
Código desarrollado en el post [Nagios Custom object variables con telegram](https://p.caldentey.org/2018/05/09/nagios-custom-object-variables-con-telegram/)

 =======================================

Basic nagios configuration using several telegram groups
Code explained in [Nagios Custom object variables con telegram](https://p.caldentey.org/2018/05/09/nagios-custom-object-variables-con-telegram/)


## Puesta en marcha

Una vez tengáis el telegram bot y los grupos de telegram hechos, sustituid en contacts.cfg las variables `<CHAT_ID_WINDOWS>`, `<TELEGRAM_BOT_TOKEN>` y `<CHAT_ID_LINUX>` por los valores de vuestros grupos y bot de telegram. Ejecutad `vagrant up` y si todo va bien, deberíais tener una instalación de nagios4 up and running y enviandoos mensajes a vuestro telegram. Tarda un rato, sed pacientes.

Para acceder a la instalación de nagios:

	http://192.168.33.10/nagios/
	user: nagiosadmin
 	password:nagiosadmin

## Troubleshooting
Yo la he puesto en marcha usando estas VirtualBox Manager 5.1.34 y Vagrant 2.1.1

Al llamar a ```vagrant up``` por primera vez me dió este error

```bash
==> default: Forwarding ports...
    default: 22 (guest) => 2222 (host) (adapter 1)
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
There was an error while executing `VBoxManage`, a CLI used by Vagrant
for controlling VirtualBox. The command and stderr is shown below.

Command: ["startvm", "7b5f5565-407e-42d2-9167-d8c70d4d8302", "--type", "headless"]

Stderr: VBoxManage: error: Implementation of the USB 2.0 controller not found!
VBoxManage: error: Because the USB 2.0 controller state is part of the saved VM state, the VM cannot be started. To fix this problem, either install the 'Oracle VM VirtualBox Extension Pack' or disable USB 2.0 support in the VM settings.
VBoxManage: error: Note! This error could also mean that an incompatible version of the 'Oracle VM VirtualBox Extension Pack' is installed (VERR_NOT_FOUND)
VBoxManage: error: Details: code NS_ERROR_FAILURE (0x80004005), component ConsoleWrap, interface IConsole

```
para solucionarlo, abrid virtualbox y el las settings de la máquina deshabilitad el controlador usb.

