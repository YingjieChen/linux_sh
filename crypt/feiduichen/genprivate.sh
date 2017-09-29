openssl genrsa -aes256 -passout stdin -out private.pem 1024
openssl genrsa -aes256 -passout pass:$1 -out private.pem 1024
