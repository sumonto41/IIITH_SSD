#!/bin/bash
awk '
BEGIN{
	FS="/"
	RS="\n"
}
{
	if($2=="usr"){
		i=3
		while($i){
			(i++)
		}
		print $(i-1)
	}
}' /etc/shells

