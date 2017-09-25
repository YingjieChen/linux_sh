openssl genrsa -aes256 -out server.key.pem 2048
openssl req -new -key server.key.pem -out server.csr
openssl x509 -req -days 3650 -sha1 -extensions v3_req -CA ca.cer -CAkey ca.key.pem -CAserial ca.srl -CAcreateserial -in server.csr -out server.cer
