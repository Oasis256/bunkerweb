#!/bin/bash

# Go to env
cd ./tests/ui

# Prepare environment
sed -i "s@bunkerity/bunkerweb:.*@bunkerweb-tests@" docker-compose.yml
sed -i "s@bunkerity/bunkerweb-scheduler:.*@scheduler-tests@" docker-compose.yml
sed -i "s@bunkerity/bunkerweb-ui:.*@scheduler-tests@" docker-compose.yml

# Start stack
docker-compose pull docker-proxy app1
if [ $? -ne 0 ] ; then
    echo "❌ Pull failed"
    exit 1
fi
docker-compose up -d
if [ $? -ne 0 ] ; then
    echo "❌ Up failed"
    exit 1
fi
i=0
while [ $i -lt 120 ] ; do
    containers=("ui-bw-1" "ui-bw-scheduler-1" "ui-bw-ui-1" "ui-docker-proxy-1" "ui-app1-1")
    healthy="true"
    for container in "${containers[@]}" ; do
        check="$(docker inspect --format "{{json .State.Health }}" $container | grep "healthy")"
        if [ "$check" = "" ] ; then
            echo "⚠️ Container $container is not healthy yet ..."
            healthy="false"
            break
        fi
    done
    if [ "$healthy" = "true" ] ; then
        break
    fi
    sleep 1
    i=$((i+1))
done
if [ $i -ge 120 ] ; then
    docker-compose logs
    echo "❌ Docker stack is not healthy"
    exit 1
fi

# Start tests
docker-compose -f docker-compose.tests.yml build
if [ $? -ne 0 ] ; then
    echo "❌ Build failed"
    exit 1
fi
docker-compose -f docker-compose.tests.yml up

# Exit
exit $?