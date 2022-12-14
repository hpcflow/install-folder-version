#!/bin/bash

source install_dir.txt

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        download_link="${base_link}/${latest_version}/${app_name}-${latest_version}-${linux_ending}"
        echo "linux"
        curl $download_link -O -L
	unzip $artifact_name
elif [[ "$OSTYPE" == "darwin"* ]]; then
        artifact_name="${app_name}-${latest_version}-${macOS_ending}"
        download_link="${base_link}/${latest_version}/${artifact_name}"
        echo "macOS"
        curl $download_link -O -L
        unzip $artifact_name
else
        echo "Operating system ${OSTYPE} not supported."
fi
