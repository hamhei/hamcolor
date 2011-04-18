#!/bin/sh

Ham()
{
	if [ ${1} != "." -a ${1} != ".." ]; then
		if [ -e $HOME/${1} ]; then
			mv $HOME/${1} $HOME/${1}.org
		fi
		ln -s -i -n ${2}/hamconf/${1} $HOME/${1}
	fi
}

echo ${p}
for f in $(ls -a hamconf/); do
Ham ${f} $(pwd)
done

echo "Congratulations to be Ham Color (^^ω)"

