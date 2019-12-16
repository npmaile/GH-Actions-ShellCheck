#!/bin/sh -l
echo "${INPUT_FIND_REGEX}"
shellcheck "$(find . -regex "${INPUT_FIND_REGEX}" | grep -v "${INPUT_EXCLUSIONS}")"
