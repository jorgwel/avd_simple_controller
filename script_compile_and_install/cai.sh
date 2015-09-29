#!/bin/sh

#Going inside the folder
cd /home/jorge.bautista/AndroidStudioProjects/CriminalIntent &&

#Compiling project 
/home/jorge.bautista/AndroidStudioProjects/CriminalIntent/gradlew assembleRelease &&
    
#Stoping application
adb -s emulator-5554 shell am force-stop geoquiz.book.criminalintent &&
adb -s emulator-5556 shell am force-stop geoquiz.book.criminalintent &&
    
#Installing apk
adb -s emulator-5554 -d uninstall geoquiz.book.criminalintent &&
adb -s emulator-5556 -d uninstall geoquiz.book.criminalintent &&

#Installing apk
adb -s emulator-5554 -d install /home/jorge.bautista/AndroidStudioProjects/CriminalIntent/app/build/outputs/apk/app-debug-unaligned.apk &&
adb -s emulator-5556 -d install /home/jorge.bautista/AndroidStudioProjects/CriminalIntent/app/build/outputs/apk/app-debug-unaligned.apk &&

#Running Criminal intent
adb -s emulator-5554 shell am start -n geoquiz.book.criminalintent/.CrimePagerActivity &&
adb -s emulator-5556 shell am start -n geoquiz.book.criminalintent/.CrimePagerActivity

