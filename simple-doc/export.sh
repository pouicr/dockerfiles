#!/bin/bash
cd /work
rm -rf site.tgz
tar -zcvf site.tgz site
cat site.tgz
