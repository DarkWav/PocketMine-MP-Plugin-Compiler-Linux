#!/bin/bash
DIR="$(cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
cd "$DIR"
function pause(){
   read -p "$*"
}
./bin/php7/bin/php -dphar.readonly=0 ./ConsoleScript.php --make ./put_plugin_src_here --relative ./put_plugin_src_here --out ./YourPlugin.phar
pause 'Press any key to close...'
