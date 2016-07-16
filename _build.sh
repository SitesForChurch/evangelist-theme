#!/bin/bash

path="/Users/ryanhayden/github/whatawordisthis.com/";
git_path="git@github.com:SitesForChurch/evangelist-theme.git";
need_build=false;
#!/usr/bin/env bash

echo "Navigate to web root: $path";

cd $path;

echo "Update repo ...";
git pull $git_path;

echo "Get Data";
node ./_airtable.js;
echo "Build Jekyll";
jekyll build
echo "Compile SASS";
node-sass _css/app.scss _site/assets/css/app.css;
echo "Sync";
osascript upload.scpt;
echo -e '\n Complete all scripts';