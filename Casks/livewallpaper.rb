cask "livewallpaper" do
  version "1.2.6"
  sha256 "22dee9f1f9e8f20ad581a3206e999a1878752a9c6ba9fa79cc044838a9682816"

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
