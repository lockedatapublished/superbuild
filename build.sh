#!/bin/bash

## Updates
git submodule update --init --recursive
hugo version

## Infrastructure
mkdir public
cp -v _redirects public/
cp -v robots.txt public/
cp -v sitemap_index.xml public/

## Core site areas
hugo -s itsalocke -d "../public"
hugo -s blog -d "../public/blog"
hugo -s talks -d "../public/talks"
hugo -s news -d "../public/news"

## Package docs

rm -rf public/optiRum
git clone -b gh-pages https://github.com/lockedata/optiRum.git public/optiRum

rm -rf public/datasauRus
git clone -b gh-pages https://github.com/lockedata/datasauRus.git public/datasauRus

rm -rf public/HIBPwned
git clone -b gh-pages https://github.com/lockedata/HIBPwned.git public/HIBPwned

rm -rf public/namer
git clone -b gh-pages https://github.com/lockedata/namer.git public/namer

rm -rf public/ibmsunburst
git clone -b gh-pages https://github.com/lockedata/ibmsunburst.git public/ibmsunburst

rm -rf public/starters
git clone -b gh-pages https://github.com/lockedata/starters.git public/starters

rm -rf public/hubspot

## Presentations
mkdir public/slides
cp -R pres-datascience/docs/* public/slides/
cp -R pres-r/docs/* public/slides/
cp -R pres-azure/docs/* public/slides/
cp -R pres-datawrangling/docs/* public/slides/

## Twitter handle fix
grep -rl stefflocke public | xargs sed -i 's/stefflocke/theStephLocke/g'
grep -rl SteffLocke public | xargs sed -i 's/SteffLocke/theStephLocke/g'
grep -rl 'http://stephlocke' public | xargs sed -i 's|http://stephlocke|https://stephlocke|g'

## Reveal in root dir
mkdir public/js/revealjs
cp -R revealjs/* public/js/revealjs/
grep -rl 'reveal.js' public |  xargs sed -i 's|"T.*\/reveal\.js-3\.3\.0\.1|"../js/revealjs|g'
grep -rl 'reveal.js' public |  xargs sed -i 's|"C.*\/reveal\.js-3\.3\.0\.1|"../js/revealjs|g'
grep -rl 'reveal.js' public |  xargs sed -i 's|"reveal\/reveal\.js-3\.3\.0\.1|"../js/revealjs|g'
