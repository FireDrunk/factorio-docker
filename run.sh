#!/bin/bash

if [ "$VERSION" = "experimental" ]; then
  echo "#### WARNING ####"
  echo "#### You are running an experimental version of Factorio! YMMV! ####"
  echo "#### WARNING ####"
fi

if [ ! -f $SAVEFILE ]; then
  echo "#### Save not found, creating new world... ####"
  /opt/factorio/bin/x64/factorio --create $SAVEFILE
fi

echo "#### Starting Factorio Headless server ####"
/opt/factorio/bin/x64/factorio --start-server $SAVEFILE
