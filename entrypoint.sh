#!/bin/sh -l
EXCLUSIONS=${INPUT_EXCLUSIONS:-'^$'}
REGEX=${INPUT_FIND_REGEX:-'.*\.sh'}
pwd
echo "checking files:\n"
find . -regex "${REGEX}"
shellcheck "$(find . -regex "${REGEX}" | grep -v "${EXCLUSIONS}")"
