#!/bin/sh

cmd="docker run"

if [ -n "$INPUT_MYSQL_DATABASE" ]; then
  echo "no database"
  cmd="$cmd -e MYSQL_DATABASE=$INPUT_MYSQL_DATABASE"
fi

cmd="$cmd -e MYSQL_ALLOW_EMPTY_PASSWORD=true"
cmd="$cmd -d -p 3306:3306 mysql:$INPUT_VERSION --port=3306"
cmd="$cmd --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci"
echo "$cmd"
sh -c "$cmd"