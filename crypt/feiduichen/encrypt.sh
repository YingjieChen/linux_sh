openssl rsautl -encrypt -pubin -inkey public.pem -in plain.txt -out encrypt.txt;
openssl enc -base64 -out base64encrypt.txt -in encrypt.txt;
