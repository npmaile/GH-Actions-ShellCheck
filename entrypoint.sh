#!/bin/sh -l
EXCLUSIONS=${INPUT_EXCLUSIONS:-'^$'}
REGEX=${INPUT_FIND_REGEX:-'.*\.sh'}
pwd
echo "checking files:"
files="$(find . -regex "${REGEX}"| grep -v "${EXCLUSIONS}")"
for file in $files; do
	echo "testing ${file}"
	shellcheck "$file"
done
