#!/bin/bash

if [ $# -ne 1 ]
then
	echo "Usage: $0 <list-of-networks.txt>"
	exit 1
fi


NETWORKS=$1
OUTPUT="shodan-data.json.gz"


# Iterate over the networks and download their data
counter=0
for network in `cat $NETWORKS`
do
	# Use "shodan download" if we're interested in an IP range, otherwise just
	# do a direct IP lookup using "shodan host"
	if [[ $network == *"/"* ]]
	then
		shodan download --limit 0 _tmp-$counter.json.gz net:$network
	else
		shodan host -O _tmp-$counter.json.gz $network
	fi
	((counter++))
	sleep 2
done

# Concatenate all the temporary files together
zcat _tmp-*.json.gz | gzip > $OUTPUT

# Remove the temporary files
rm -f _tmp-*.json.gz
