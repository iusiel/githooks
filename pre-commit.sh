#!/bin/bash
php linters/php_lint.php
status=$?
## if php_lint.php returned non zero code, exit immediately and abort git commit ## 
[ $status -eq 0 ] && echo '' || exit 1
node linters/js_css_lint.js
status=$?
[ $status -eq 0 ] && echo '' || exit 1
npx prettier --write .