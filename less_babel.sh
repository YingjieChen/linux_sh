for file in ./css/*.less;
	do
		lessc -x $file -o ${file%".less"}.min.css;
	done

for file in ./js/*.jsx;
	do
		babel $file --presets babel-preset-react -o ${file%".jsx"}.js;
		java -jar yuicompressor.jar  ${file%".jsx"}.js -o ${file%".jsx"}.min.js;
	done
