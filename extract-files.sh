#!/bin/bash

set -e

export VENDOR=amazon
export DEVICE=thor

./../../$VENDOR/hdx-common/extract-files.sh $@

./setup-makefiles.sh
