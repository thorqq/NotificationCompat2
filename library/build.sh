#!/bin/bash

if [ -z "$ANDROID_HOME" ]; then
  echo 'You must have an $ANDROID_HOME environment variable set and Android 4.1 downloaded.'
  exit 1
fi

rm -rf out *.jar
mkdir out
javac -d out -cp "$ANDROID_HOME/platforms/android-16/android.jar" src/main/java/com/jakewharton/notificationcompat2/*
jar cf NotificationCompat2-1.0.1.jar out/*
rm -rf out
