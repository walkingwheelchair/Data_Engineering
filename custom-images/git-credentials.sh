#!/bin/sh
set -e

if [ -n "$GIT_USERNAME" ] && [ -n "$GIT_TOKEN" ]; then
  echo "https://${GIT_USERNAME}:${GIT_TOKEN}@github.com" > /home/jovyan/.git-credentials
  chmod 600 /home/jovyan/.git-credentials
fi

# Hand over to the original Jupyter entrypoint
exec "$@"