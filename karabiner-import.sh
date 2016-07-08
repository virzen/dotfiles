#!/bin/sh

cli=/Applications/Karabiner.app/Contents/Library/bin/karabiner

$cli set remap.commandR2optionR 1
/bin/echo -n .
$cli set remap.optionrcommandr 1
/bin/echo -n .
$cli set remap.russian_backquote2paragraph 1
/bin/echo -n .
$cli set remap.russian_paragraph2backquote 1
/bin/echo -n .
$cli set repeat.initial_wait 400
/bin/echo -n .
$cli set repeat.wait 60
/bin/echo -n .
/bin/echo
