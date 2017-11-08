openssl genrsa -aes256 -out client.key.pem 2048
openssl req -new -key client.key.pem -out client.csr
openssl x509 -req -days 3650 -sha1 -extensions v3_req -CA ca.cer -CAkey ca.key.pem -CAserial ca.srl -CAcreateserial -in client.csr -out client.cer
openssl pkcs12 -export -clcerts -inkey client.k`ey.pem -in client.cer -out client.p12
