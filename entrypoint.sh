#!/bin/sh -l
EXCLUSIONS=${INPUT_EXCLUSIONS:-'^$'}
REGEX=${INPUT_FIND_REGEX:-'.*\.sh'}
pwd
ls -la
cat "$(find . -regex "${REGEX}")"
shellcheck "$(find . -regex "${REGEX}" | grep -v "${EXCLUSIONS}")"
