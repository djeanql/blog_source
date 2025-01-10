#!/bin/bash

# This script sets up the blog development environment

if [[ ! -d .git ]]; then
    git init
    git remote add origin https://github.com/djeanql/blog_source
fi



if [[ ! -d pelican-plugins ]]; then
    git clone --recursive https://github.com/getpelican/pelican-plugins.git pelican-plugins
fi

if [[ ! -d deploy ]]; then
    mkdir deploy
    cd deploy
    git init
    git remote add origin https://github.com/djeanql/djeanql.github.io
fi

