#!/bin/sh -l
EXCLUSIONS=${INPUT_EXCLUSIONS:-'^$'}
REGEX=${INPUT_FIND_REGEX:-'.*\.sh'}
pwd
echo "checking files:"
files="$(find . -regex "${REGEX}"| grep -v "${EXCLUSIONS}")"
returncode=0
for file in $files; do
	echo "testing ${file}"
	shellcheck "$file"
	status="$?"
	if ! [ ${status} != "0" ] ; then
		returncode=${status}
	fi
done

exit "${returncode}"
