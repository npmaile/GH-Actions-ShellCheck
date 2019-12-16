#!/bin/sh -l
EXCLUSIONS=${INPUT_EXCLUSIONS:-'^$'}
REGEX=${FIND_REGEX:-'.*\.sh'}
shellcheck "$(find . -regex "${FIND_REGEX}" | grep -v "${EXCLUSIONS}")"
