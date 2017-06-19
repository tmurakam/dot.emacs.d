#!/bin/sh
git submodule init
git submodule update
(cd elisp/rinari && \
git submodule init && \
git submodule update)
touch init/init_local.el
