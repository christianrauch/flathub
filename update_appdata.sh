#!/usr/bin/env bash
# update licence
sed -i 's|<metadata_license>GPL-3.0 AND Apache-2.0</metadata_license>|<metadata_license>CC0-1.0</metadata_license>|g' $1
# add content_rating and releases
sed -i -r "s|</description>|</description>\n  <content_rating type=\"oars-1.1\"/>\n  <releases><release date=\"2023-03-01\" version=\"\"/></releases>|g" $1
