#!/usr/bin/env bash
set -eu

sed -i "s/DESKTOP_ENVIRONMENT=.*/DESKTOP_ENVIRONMENT=\"kde\"/" /alis/alis.conf
