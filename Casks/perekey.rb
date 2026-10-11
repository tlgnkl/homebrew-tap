cask "perekey" do
  version "0.1.0"
  sha256 "62982e5e68564f34895bd7169538d984e4e7f5d147254f0fb6f522b493f38270"

  url "https://github.com/tlgnkl/perekey/releases/download/v#{version}/Perekey-#{version}.dmg"
  name "Perekey"
  desc "Keyboard layout switcher that fixes text typed in the wrong layout"
  homepage "https://tlgnkl.github.io/perekey/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true # Sparkle updates the app itself
  depends_on macos: ">= :sonoma"

  app "Perekey.app"

  zap trash: [
    "~/Library/Application Support/Perekey",
    "~/Library/Preferences/app.perekey.Perekey.plist",
    "~/Library/Caches/app.perekey.Perekey",
    "~/Library/Logs/Perekey",
    "~/Library/Saved Application State/app.perekey.Perekey.savedState",
  ]
end
