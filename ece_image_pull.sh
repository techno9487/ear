#!/bin/bash
VERSION=8.16.2
echo $VERSION
docker pull docker.elastic.co/cloud-release/elasticsearch-cloud-ess:$VERSION --platform=linux/amd64
docker pull docker.elastic.co/cloud-release/kibana-cloud:$VERSION --platform=linux/amd64
docker pull docker.elastic.co/cloud-release/elastic-agent-cloud:$VERSION --platform=linux/amd64
docker pull docker.elastic.co/cloud-release/enterprise-search-cloud:$VERSION --platform=linux/amd64
docker pull docker.elastic.co/package-registry/distribution:$VERSION --platform=linux/amd64
docker pull docker.elastic.co/cloud-release/elastic-agent-cloud:8.12.2 --platform=linux/amd64

docker save -o es.$VERSION.tar docker.elastic.co/cloud-release/elasticsearch-cloud-ess:$VERSION
docker save -o kibana.$VERSION.tar docker.elastic.co/cloud-release/kibana-cloud:$VERSION
docker save -o apm.$VERSION.tar docker.elastic.co/cloud-release/elastic-agent-cloud:$VERSION
docker save -o enterprise-search.$VERSION.tar docker.elastic.co/cloud-release/enterprise-search-cloud:$VERSION
docker save -o enterprise-search.$VERSION.tar docker.elastic.co/package-registry/distribution:$VERSION