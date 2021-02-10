FILE=$1

count_lines()
{
	echo -e "\nThe number of lines in the file is..."
	grep -c ^ $FILE
}

count_words()
{
	echo -e "\nLorem:"
    grep -Fiw Lorem <$FILE
	echo -e "\nmodel:"
	grep -Fiw model <$FILE
	echo -e "\nIpsum:"
	grep -Fiw Ipsum <$FILE
	echo -e "\nwill:"
	grep -Fiw will <$FILE
}

add_text()
{
	echo -e "\nType sentence you want to append:"
	read SENTENCE
	echo $SENTENCE >> $FILE
}

copy_and_exit()
{
	mkdir solutions | cp $FILE solutions
}

if [[ -f "$FILE" ]]; then
	while :
	do
		echo -e "\nPick a function: "
		echo "1) count_lines"
		echo "2) count_words"
		echo "3) add_text"
		echo "4) copy_and_exit"
		echo "5) exit"
		read OPT
			case $OPT in
				1) count_lines ;;
				2) count_words ;;
				3) add_text ;;
				4) copy_and_exit ;;
				5) exit ;;
			esac
	done
else
	echo "$FILE does not exist"
	exit
fi


