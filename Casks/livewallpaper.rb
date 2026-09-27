cask "livewallpaper" do
  version "1.2.7"
  sha256 "d2e0ba566a6dec02abdb8b611badcccd1621066813c95fcb66acbad582f1cfe3"

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
