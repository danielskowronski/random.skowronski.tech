#!/bin/bash
export CF_ZONE_ID="`cat terraform/zone_id.auto.tfvars.json | jq -r '.cf_zone_id'`"

touch ./app/index.html
aws s3 sync --delete ./app/ s3://random.skowronski.tech

curl -s -X POST "https://api.cloudflare.com/client/v4/zones/${CF_ZONE_ID}/purge_cache" \
     -H "Authorization: Bearer ${CLOUDFLARE_API_TOKEN}" \
     -H "Content-Type: application/json" \
     --data '{"purge_everything":true}' | jq
