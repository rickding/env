#!/bin/bash

for REPO in api admin deploy pc app env doc HelloDocker HelloJava HelloPython StarterAdmin StarterApi StarterDeploy toutiao
do
    echo "fetch: " $REPO
    cd $REPO

	git fetch origin

	git checkout master && git pull

    cd ..
done
