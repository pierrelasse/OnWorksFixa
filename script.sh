#!/bin/bash

echo -e -n "Did you ran 'sudo -i' and typed in '123456'? (y/N): "
read -r CONFIRM
if [[ "$CONFIRM" =~ [Yy] ]]; then
    execute "$2"
else
    error "Aborted."
    exit 1
fi