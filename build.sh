#!/bin/bash
git submodule update --init --recursive
hugo version
hugo -s itsalocke -d "../public"
hugo -s blog -d "../public/blog"
hugo -s talks -d "../public/talks"

mkdir public/pRojects
cp pRojects/docs/* public/pRojects/
