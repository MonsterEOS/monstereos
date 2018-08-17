#!/usr/bin/env bash
echo -e "\033[34mRunning yarn install in all local directories and subdirectories...\033[0m"

echo ""
echo -e "\033[1;96m/\033[0m"
yarn --pure-lockfile
echo ""

IFS=$'\n' read -rd '' -a DIRS <<<"$(find . -not \( -path \*/node_modules -prune \) -name 'package.json' -exec dirname {} \;)"
for dir in "${DIRS[@]}"
do
    echo -e "\033[1;96m"
    echo "${dir}"
    echo -e "\033[0m"
    (
        cd "${dir}"
        yarn --pure-lockfile
    )
done
