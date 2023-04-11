#!/bin/bash
aws s3 sync --delete ./app/ s3://random.skowronski.tech
