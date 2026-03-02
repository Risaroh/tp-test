PROJECT_NAME=bp

.PHONY: clean

clean:
	fvm flutter clean && fvm flutter pub get

codegen: clean
	fvm flutter pub run build_runner build --delete-conflicting-outputs

iosPod:
	cd ios && rm -rf Podfile.lock Pods Runner.xcworkspace && fvm flutter clean && fvm flutter pub get && pod install

iosPodUpdate:
	cd ios && rm -rf Podfile.lock Pods Runner.xcworkspace
	fvm flutter clean 
	fvm flutter pub get
	cd ios && pod install --repo-update

macosPod:
	cd macos && rm -rf Podfile.lock Pods Runner.xcworkspace && fvm flutter clean && fvm flutter pub get && pod install

macosPodUpdate:
	cd macos && rm -rf Podfile.lock Pods Runner.xcworkspace
	fvm flutter clean
	fvm flutter pub get
	cd macos && pod install --repo-update

androidBuild: clean
	fvm flutter build apk --split-per-abi
	mv `pwd`/build/app/outputs/flutter-apk/app-armeabi-v7a-release.apk /tmp/$(PROJECT_NAME)-$(ver).apk
	echo /tmp/$(PROJECT_NAME)-$(ver).apk

importSorter:
	dart run import_sorter:main

genSlang: clean
	fvm flutter pub run slang

pubUpgrade: clean
	fvm flutter pub upgrade --major-versions