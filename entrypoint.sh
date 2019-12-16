#!/bin/sh -l
pwd
ls
shellcheck $(find . -regex "INPUT_FIND-REGEX")
