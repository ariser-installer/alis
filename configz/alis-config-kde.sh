#!/usr/bin/env bash
set -eu

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

sed -i "s/DESKTOP_ENVIRONMENT=.*/DESKTOP_ENVIRONMENT=\"kde\"/" $installed_dir/alis.conf