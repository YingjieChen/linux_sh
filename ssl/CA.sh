openssl genrsa -aes256 -out ca.key.pem 2048
echo "This is the ca.key.pem";
openssl rsa -noout -text -in ca.key.pem
openssl req -new -key ca.key.pem -out ca.csr
echo "This is the ca.csr";
openssl req -noout -text -in ca.csr
echo "Program is going to gen the key";
openssl x509 -req -days 3650 -sha1 -extensions v3_ca -signkey ca.key.pem -in ca.csr -out ca.cer
echo "This is finial cer file";
openssl x509 -noout -text -in ca.cer  
openssl pkcs12 -export -cacerts -inkey ca.key.pem -in ca.cer -out ca.p12  
