#!/bin/sh -l
shellcheck $(find . -regex "${INPUT_FIND-REGEX}")
