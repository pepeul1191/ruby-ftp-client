require 'net/ftp'

server = "192.168.1.51"
user = "pepe"
password = "kiki123"

ftp = Net::FTP.new(server)
ftp.passive = true
ftp.login user, password
files = ftp.chdir('Documentos/py2/archivos')
files = ftp.list
puts "list out of directory:"
puts files
ftp.close