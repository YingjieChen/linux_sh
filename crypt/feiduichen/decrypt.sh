openssl enc -base64 -d -out base64decrypt.txt -in base64encrypt.txt;
openssl rsautl -decrypt -inkey private.pem -in base64decrypt.txt -out decrypt.txt;
