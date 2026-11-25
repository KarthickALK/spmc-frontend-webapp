#!/usr/bin/env bash
set -euo pipefail

git clone https://github.com/flutter/flutter.git --depth 1 -b stable "$HOME/flutter"
export PATH="$PATH:$HOME/flutter/bin"
export DART_VM_OPTIONS="--old_gen_heap_size=2560"

flutter config --enable-web
flutter pub get
flutter build web --release --no-source-maps --no-tree-shake-icons
