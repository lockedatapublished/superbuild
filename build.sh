#!/bin/bash
git submodule update --init --recursive
hugo version
hugo -s itsalocke -d "../public"
hugo -s blog -d "../public/blog"
hugo -s talks -d "../public/talks"
hugo -s news -d "../public/news"

mkdir public/pRojects
cp -R pRojects/docs/* public/pRojects/

mkdir public/optiRum
cp -R optiRum/docs/* public/optiRum/

mkdir public/datasauRus
cp -R datasauRus/docs/* public/datasauRus/

mkdir public/HIBPwned
cp -R HIBPwned/docs/* public/HIBPwned/

cp -v _redirects public/
cp -v robots.txt public/
cp -v sitemap_index.xml public/