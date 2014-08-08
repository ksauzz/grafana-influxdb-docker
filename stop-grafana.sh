#!/bin/bash

set -x

cat .container_ids | xargs docker stop
rm .container_ids
