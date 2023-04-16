#!/bin/bash
aws s3 sync --delete ./app/ s3://random.skowronski.tech

curl -X POST "https://api.cloudflare.com/client/v4/zones/6443f45f13776c3183e79b68443b4201/purge_cache" \
     -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}'
