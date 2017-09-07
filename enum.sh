enum(){
	dir=$1;
	for file in $dir/*;
		do
			if test -d $file
				then
					touch "$file/index.html"
					enum $file
			fi
			if test -f $file
				then
					echo $file 
			fi
		done
}

enum $1
