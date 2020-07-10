##!/usr/bin/env bash

set -e

mkdir -p sdks
if [ -d sdks/* ]; then rm -r sdks/*; fi

# Copy MFS100 dependencies
if [ ! -f MFS100-Android-SDK-9.0.3.2.zip ]; then
  echo ""
  echo "You need MFS100-Android-SDK-9.0.3.2.zip in the project! Download it at https://download.mantratecapp.com/Forms/UserDownload."
  echo ""
  exit 1
fi

unzip MFS100-Android-SDK-9.0.3.2.zip -d sdks/mfs100

cp sdks/mfs100/MFS100-Android-SDK-9.0.3.2/libs/mantra.mfs100.jar \
    Android/mantramfs100/libs
cp -r sdks/mfs100/MFS100-Android-SDK-9.0.3.2/jniLibs \
    Android/mantramfs100/src/main/
