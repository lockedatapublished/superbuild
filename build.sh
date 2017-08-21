#!/bin/bash
git submodule update --init --recursive
hugo version
hugo -s itsalocke -d "../public"
hugo -s blog -d "../public/blog"
