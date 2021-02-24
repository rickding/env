#!/bin/bash

for REPO in env doc
do
    echo "commit: " $REPO
    cd $REPO

	git add . && git commit -m "update" && git push origin

    cd ..
done
