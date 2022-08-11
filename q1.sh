#!/bin/bash
awk '
BEGIN{
	FS="\n"
	RS=""
}
END{
	print $((NF+1)/2)
}' $1
