#!/bin/bash

task="$1"

create(){
	read -p "choose the name of the branch" b
	git branch "$b"
	git branch -a
	exit 0
}
list(){
	git branch -a
	exit 0
}
merge(){
	read -p "enter the brach to merge" b1
	read -p "branch to merge into" b2
	git checkout "$b2"
	git merge "$b1"
	exit 0
}
delete(){
	read -p "name of the branch to delete" d
	git branch -d "$d"
}


case "$task" in
	Create) create ;;
	List) list ;;
	Merge) merge;;
	Delete) delete ;;
	*)
	echo "not valid"
	;;
esac




