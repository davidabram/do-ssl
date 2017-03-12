#!/bin/bash

declare hook="$(pwd)/scripts/renew-hook.sh"

certbot renew --force-renewal --preferred-challenges dns \
--test-cert \
--agree-tos --non-interactive --manual-public-ip-logging-ok \
--renew-hook $hook
