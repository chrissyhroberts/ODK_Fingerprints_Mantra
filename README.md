![](Android/app/src/main/res/mipmap-xhdpi/ic_launcher.png)

# Keppel

[![Android](https://github.com/LSHTM-ORK/ODK_Biometrics/workflows/Android/badge.svg)](https://github.com/LSHTM-ORK/ODK_Biometrics/actions?query=workflow%3AAndroid)

[![CLI](https://github.com/LSHTM-ORK/ODK_Biometrics/workflows/CLI/badge.svg)](https://github.com/LSHTM-ORK/ODK_Biometrics/actions?query=workflow%3ACLI)

Allows fingerprints to be scanned as part of an [ODK Collect](https://opendatakit.org/software/odk/#odk-collect) form.

## Security and Privacy

It's important to realize that fingerprints (or any form of biometric data) are very sensitive. Collecting them may help your programme or study but make sure to fully consider privacy and security concerns when doing so.

If you're collecting any personal information using ODK it would be a good idea to look into [encrypting forms](https://docs.opendatakit.org/encrypted-forms) and also to read ODK's [general documentation on security](https://docs.opendatakit.org/security-privacy/).

## Usage

### Scanning fingerprints in forms

To setup a form to scan fingerprints the devices used for data collection will all need the app installed. It can be downloaded [here](https://github.com/chrissyhroberts/ODK_Fingerprints_Mantra/releases). The app integrates with ODK Collect's [External app widget](https://docs.opendatakit.org/form-question-types/#external-app-widget) using the `uk.ac.lshtm.keppel.android.SCAN` intent. An example XML form can be found [here](docs/form.xml) and an XLS Form version can be found [here](docs/form.xlsx).

### Matching fingerprints

You can install the command line interface from matching fingerprints [here](https://github.com/chrissyhroberts/ODK_Fingerprints_Mantra/releases). To match two (hex encoded) fingerprint templates run:

```bash
keppel match /path/to/first_template /path/to/second_template
```

## Creating an Android release

**Prerequisites**: You will need to install both a JDK and the Android SDK to build a release. The easiest way to install Android is to download [Android Studio](https://developer.android.com/studio/) and import the project in `Android` into it. This takes care of downloading the correct Android dependencies for you.

To create a release:

1. Update the `versionCode` and `versionName` in `Android/app/build.gradle` for the release. `versionCode` should be any number higher than the current value.
1. Commit the changes:
    ```bash
    git add Android/app/build.gradle
    git commit -m "Update versionName and versionCode"
    ```
1. Tag the latest commit and push the changes:
    ```bash
    git tag <versionName>
    git push
    git push --tags
    ```
1. Run `./import-device-sdks.sh` and follow any instructions to make sure device SDKs are setup correctly
1. Run `./build-android-release.sh` to build the signed release APK
1. Navigate to https://github.com/chrissyhroberts/ODK_Fingerprints_Mantra/tags, click your new tag, click "Edit tag"
1. Set the `versionName` as the "Release title", attach the signed release APK and hit "Publish release" 🚢

## Creating a CLI release

**Prerequisites**: You will need to install a JDK

To create a release:

1. Tag the latest commit and push:
    ```bash
    git tag <versionName>
    git push --tags
    ```
1. Run `./build-cli-release.sh` to package the CLI
1. Navigate to https://github.com/chrissyhroberts/ODK_Fingerprints_Mantra/tags, click your new tag, click "Edit tag"
1. Set the "Release title", attach the `.zip` package and hit "Publish release" 🚢

## Supported devices

### Mantra MFS100

#### Mantra Softech India Private Limited

* Mantra is a leading manufacturer and developer of Biometric devices, software and solutions from 2006 onwards.
* The biometric-based technology offers a dependable, helpful, and authentic way of verifying/identifying an individual's identity utilizing latest Biometric fingerprint scanner.
* Fingerprint scanners are being used broadly for enrollment, identification & verification in varied projects where the identity of people is required.
* Mantra's biometric fingerprint devices offer superior execution, accuracy, and continuance.
* Our wide ranges of fingerprint scanner devices deliver quick personality verification with a high level of security in a consistent way for various Citizen or Person identity ventures.

#### Mantra’s MFS100 - Biometric Fingerprint Scanner

* FBI and STQC certified single finger scanner MFS100 is high quality USB fingerprint sensor for fingerprint authentication in desktop or network security.
* MFS100 is based on optical sensing technology which efficiently recognizes poor quality fingerprints also.
* MFS100 can be used for authentication, identification and verification functions that let your fingerprint act like digital passwords that cannot be lost, forgotten or stolen.
* Hard optical sensor is resistant to scratches, impact, vibration and electrostatic shock.
* Lowest FAR and FRR NIST complied interoperable template format standards (ANSI378 /ISO19794-2). Compatibility with ISO 19794-4 and ISO 19794-2 for fingerprint capture and verification.
* Apart from FBI and STQC, MFS100 is CE, FCC, RoHS, WHQL, CB 60950 approved. Equivalent to FBI PIV certification.
* Supports operating system plaforms like Windows 98 SE, Me, 2000, XP, Windows7, windows vista, windows server(2003/2007/2008) and Linux.
* SDK, Libraries and drivers support across all mentioned platforms. (32 bit/64 bit) Easy integration into product servers and application support
