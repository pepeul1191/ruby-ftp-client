require 'net/ftp'

server = "192.168.1.51"
user = "pepe"
password = "kiki123"

Net::FTP.open(server) do |ftp|
  begin
    ftp.login('ftp-user', 'ftp-pass')
    """
    files = ftp.chdir('Documentos/py2/archivos')
    files = ftp.list
    puts 'list out of directory:'
    puts files
    """
    origin_file = File.new('/home/pepe/Descargas/JSF 2.0 Cookbook.pdf')
    destination_file = 'Descargas/JSF 2.0 Cookbook.pdf'
    ftp.put(origin_file, destination_file)
  rescue => e
    puts e
  ensure
    ftp.close
  end
end