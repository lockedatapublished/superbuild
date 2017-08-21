#!/bin/bash
git submodule update --init --recursive
hugo -s itsalocke -d "../public"
