#!/bin/sh -l
EXCLUSIONS=${INPUT_EXCLUSIONS:-'^$'}
REGEX=${INPUT_FIND_REGEX:-'.*\.sh'}
cat "${find . -regex "${REGEX}"}"
shellcheck "$(find . -regex "${REGEX}" | grep -v "${EXCLUSIONS}")"
