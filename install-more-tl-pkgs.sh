#!/bin/sh

tlmgr install $(cat TeXLive.pkgs | tr '\n' ' ')
