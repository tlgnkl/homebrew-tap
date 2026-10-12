cask "perekey" do
  version "0.1.1"
  sha256 "68cf97fda12b06a86d6e40aed50086e0defb5f17b70b53ac69b7e9e7d59ecf01"

  url "https://github.com/tlgnkl/perekey/releases/download/v#{version}/Perekey-#{version}.dmg"
  name "Perekey"
  desc "Keyboard layout switcher that fixes text typed in the wrong layout"
  homepage "https://tlgnkl.github.io/perekey/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true # Sparkle updates the app itself
  depends_on macos: :sonoma

  app "Perekey.app"

  zap trash: [
    "~/Library/Application Support/Perekey",
    "~/Library/Preferences/app.perekey.Perekey.plist",
    "~/Library/Caches/app.perekey.Perekey",
    "~/Library/Logs/Perekey",
    "~/Library/Saved Application State/app.perekey.Perekey.savedState",
  ]
end
