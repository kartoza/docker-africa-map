#!/bin/bash

APACHE_IMAGE=kartoza/africa-map

docker.io kill africa-map
docker.io rm africa-map

# Uncomment to run with a bash prompt for testing
# You can start apache inside the container using
# apache2ctl -D FOREGROUND

#docker.io run --name='africa-map' \
#        -p 9080:80 \
#        --entrypoint=/bin/bash \
#	-i -t ${APACHE_IMAGE} -i

# Once testing is done comment the above and use
# this one rather.
docker.io run --name='africa-map' \
        -p 9080:80 \
	-d -t ${APACHE_IMAGE}


