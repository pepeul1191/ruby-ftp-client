## FTP - Ruby

Requisitos de software previamente instalado:

	+ Ruby 2.3.1  en el cliente
	+ VSFTP en el servidor

### Descipción

Instalación de dependencias:

	No aplica.

## Configuración del Servidor

Crear usuario ftp:

    $ sudo useradd -m <usuario-ftp> -s /usr/sbin/nologin

Crear contraseña usuario ftp:

    $ sudo passwd <usuario-ftp>

Add “/usr/sbin/nologin” to /etc/shells file to enable login access for the users who uses nologin shell.

    $ echo "/usr/sbin/nologin" | sudo tee -a /etc/shells
  
Al usuario ftp creado asignar la propiedad de la carpeta que se usará para subir los archivos.

    $ sudo chown <usuario-ftp> <directorio-de-carga>

--- 
Fuentes:
+ http://www.krizna.com/ubuntu/setup-ftp-server-ubuntu-16-04/
+ https://gist.github.com/taf2/9942888
+ https://docs.ruby-lang.org/en/2.0.0/Net/FTP.html