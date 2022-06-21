#!/bin/bash

for REPO in api admin deploy doc
do
    echo "fetch: " $REPO

	if [ ! -d "$REPO" ]; then
		git clone ssh://git@10.10.220.154:30001/e-tron/$REPO.git
	else
		cd $REPO

		git fetch origin

		git checkout master && git pull

		cd ..		
	fi
done
