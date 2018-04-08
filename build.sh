#!/bin/bash

## Set if not exists
DEPLOY_PRIME_URL=${DEPLOY_PRIME_URL:="https://itsalocke.com"}
## Updates
git submodule sync --recursive
git submodule update --init --recursive
  
hugo version

## Infrastructure
mkdir public
cp -v _redirects public/
cp -v robots.txt public/
cp -v sitemap_index.xml public/

## Core site areas
hugo -s itsalocke -d "../public" -b "$DEPLOY_PRIME_URL/"
hugo -s blog -d "../public/blog" -b "$DEPLOY_PRIME_URL/blog/"
hugo -s talks -d "../public/talks" -b "$DEPLOY_PRIME_URL/talks/"
hugo -s news -d "../public/news" -b "$DEPLOY_PRIME_URL/news/"

## Package docs
mkdir public/pRojects
cp -R pRojects/docs/* public/pRojects/

mkdir public/optiRum
cp -R optiRum/docs/* public/optiRum/

mkdir public/datasauRus
cp -R datasauRus/docs/* public/datasauRus/

mkdir public/HIBPwned
cp -R HIBPwned/docs/* public/HIBPwned/

## Reveal in root dir
mkdir public/js/revealjs
cp -R revealjs/* public/js/revealjs/

## Presentations
mkdir public/slides
cp -R pres-datascience/docs/* public/slides/
cp -R pres-r/docs/* public/slides/
cp -R pres-azure/docs/* public/slides/