cask "livewallpaper" do
  version "1.5.0"
  sha256 "3c69ee1ad51a2c4a411efa8eb10bda2cc3997bd9142dfe51f75be9bb650db97b"

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
