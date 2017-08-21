#!/bin/bash
git submodule update --init --recursive
hugo version
hugo -v -s itsalocke -d "../public"
hugo -v -s blog -d "../public/blog"
