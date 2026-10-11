# tlgnkl/homebrew-tap

Homebrew casks for [Perekey](https://github.com/tlgnkl/perekey), the free and
open-source keyboard layout switcher for macOS.

```sh
brew install --cask tlgnkl/tap/perekey
```

Builds are not signed by Apple yet, so macOS blocks the first launch: open
Perekey once, then click **Open Anyway** in System Settings → Privacy & Security.

Perekey updates itself through Sparkle, so the cask only moves forward when a
new version should be installable from scratch. How to bump it:
[packaging/README.md](https://github.com/tlgnkl/perekey/blob/main/packaging/README.md).
