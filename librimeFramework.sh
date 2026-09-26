#!/usr/bin/env bash
# encoding: utf-8
set -e

OUTPUT="${PWD}/Frameworks"

# Upstream imfuxiao/LibrimeKit is no longer public.
# Use amorphobia mirror that matches Hamster Package.swift layout.
LibrimeKitRepo="amorphobia/LibrimeKit"
LibrimeKitVersion="v0.1.0"
mkdir -p $OUTPUT
rm -rf $OUTPUT/*.xcframework && (
  curl -OL "https://github.com/${LibrimeKitRepo}/releases/download/${LibrimeKitVersion}/Frameworks.tgz"
  tar -zxf Frameworks.tgz -C ${OUTPUT}/..
  rm -rf Frameworks.tgz
)
