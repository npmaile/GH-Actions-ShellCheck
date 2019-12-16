#!/bin/sh -l
echo ${INPUT_FIND-REGEX}
shellcheck $(find . -regex "${INPUT_FIND-REGEX}")
