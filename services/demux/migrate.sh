#!/bin/bash
function up() {
    migrations_string=$(find ./database/migrations -type f -not -path "*truncate*" | sort)
    IFS=$'\n' read -rd '' -a migrations <<< "${migrations_string}"
    schema_name="$1"
    mkdir -p dist
    for m in "${migrations[@]}"; do
        file_name=$(echo "$m" | awk -F"/" '{ print $NF }')
        sed "s/\${schema^}/$schema_name/g" "$m" | sed "s/\${database^}/$DB_NAME/g" > dist/"$file_name"
        psql -h postgres -U $DB_USER -d "$DB_NAME" -f dist/"$file_name" || true
    done
}

if [[ "$1" = "up" ]]; then
    up "$2"
elif  [[ "$1" = "down" ]]; then
    echo "NOT IMPLEMENTED"
else
    echo "Please choose either \"up\" or \"down\""
fi