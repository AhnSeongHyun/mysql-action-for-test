#!/bin/sh

cmd="docker run"

if [ -n "$INPUT_MYSQL_DATABASE" ]; then
  echo "no database"
  cmd="cmd -e MYSQL_DATABASE=$INPUT_MYSQL_DATABASE"
fi

cmd="cmd -d -p 3306:3306 mysql:$INPUT_MYSQL_VERSION --port=3306"
cmd="cmd --character-set-server=$INPUT_CHARACTER_SET_SERVER --collation-server=$INPUT_COLLATION_SERVER"
cmd="cmd -e MYSQL_ALLOW_EMPTY_PASSWORD=true"
sh -c "cmd"