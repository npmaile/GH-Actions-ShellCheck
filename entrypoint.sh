#!/bin/sh -l
EXCLUSIONS=${INPUT_EXCLUSIONS:-'^$'}
REGEX=${FIND_REGEX:-'.*\.sh'}
find . - regex "${REGEX}"
shellcheck "$(find . -regex "${REGEX}" | grep -v "${EXCLUSIONS}")"
