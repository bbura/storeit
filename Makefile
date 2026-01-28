.PHONY: dev qa clean pub build reset-ios reset-android all coverage sonar-coverage sonar-scan push
export PATH := $(HOME)/.pub-cache/bin:$(PATH)

# Tooling autodetect (works with or without fvm)
FVM := $(shell command -v fvm 2>/dev/null)
FLUTTER = $(if $(FVM),fvm flutter,flutter)
DART = $(if $(FVM),fvm dart,dart)


# Combined tasks
pub: get upgrade
beauty: sort format

all:
	- $(MAKE) clean
	- $(MAKE) pub
	- $(MAKE) assemble
	- $(MAKE) loc
	- $(MAKE) generate

# Individual tasks

get:
	@echo "📦 Running fvm flutter pub get..."
	flutter pub get
	@echo "✅ Pub get completed"


upgrade:
	@echo "📦 Running fvm flutter pub upgrade..."
	 flutter pub upgrade
	@echo "✅ Pub upgrade completed"

assemble:
	@echo "🚧 Running build_runner..."
	dart run build_runner build --delete-conflicting-outputs
	@echo "✅ build_runner build completed"

generate:
	@echo "🚧 Running packages build_runner for code generation..."
	flutter packages pub run build_runner build --delete-conflicting-outputs
	@echo "✅ Code generation completed"

loc:
	@echo "🚧 Generating localized resources..."
	cd ./localizations && flutter gen-l10n && cd ..
	@echo "✅ Localized resources generated"

clean:
	@echo "🗑️ Deleting .pub-cache directory..."
	rm -rf ./.pub-cache
	@echo "🗑️ Deleting .packages..."
	rm -rf ./.packages
	@echo "🗑️ Deleting .pubspec.lock..."
	rm -rf ./pubspec.lock
	@echo "🧹 Running fvm flutter clean..."
	flutter clean
	yes |  flutter pub cache clean
	@echo "✅ Clean cache completed"

sort:
	@echo "🔀 Sorting imports..."
	 dart fix --apply
	@echo "✅ Imports sorted"

format:
	@echo "💅 Formatting Dart code..."
	 dart format  .
	@echo "✅ Code formatted"
