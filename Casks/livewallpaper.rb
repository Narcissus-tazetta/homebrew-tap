cask "livewallpaper" do
  version "1.5.1"
  sha256 "35c1b18855ec01dbf9e1dbf64f526e8de2496d71f8545f57accc6636adee5ec5"

  url "https://github.com/Narcissus-tazetta/LiveWallpaper/releases/download/v#{version}/LiveWallpaper-macos-v#{version}.zip"
  name "LiveWallpaper"
  desc "Set your favorite videos as Mac desktop wallpaper"
  homepage "https://github.com/Narcissus-tazetta/LiveWallpaper"

  depends_on macos: :ventura

  app "LiveWallpaper.app"

  zap trash: [
    "~/Library/Application Support/LiveWallpaper",
    "~/Library/Preferences/com.sakana.livewallpaper.plist",
    "~/Library/Saved Application State/com.sakana.livewallpaper.savedState",
  ]
end
