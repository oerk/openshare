#!/bin/sh
export ENVIRONMENT_FILE="/home/dotcloud/environment.yml";
export MOJO_LOG_LEVEL="info";

# export environment.yml as shell variables
$( perl -p -e's/:\s+/=/;s/^/export /' $ENVIRONMENT_FILE );

if [ "x$DOTCLOUD_PROJECT" = "xcool_app_test" ]; then
    export MOJO_LOG_LEVEL="debug";
fi

exec /home/dotcloud/current/openshare daemon --listen "http://*:$PORT_WWW";
