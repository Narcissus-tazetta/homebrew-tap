cask "curstyle" do
  version "0.2.0"
  sha256 "d59f176f58828d5dce97a545536bce46cd60a5b50d055666b467de2f1b3456cf"

  url "https://github.com/Narcissus-tazetta/Curstyle/releases/download/v#{version}/Curstyle-macos-v#{version}.zip"
  name "Curstyle"
  desc "Custom cursor themes for macOS"
  homepage "https://github.com/Narcissus-tazetta/Curstyle"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Curstyle.app"

  zap trash: [
    "~/Library/Preferences/io.github.narcissus-tazetta.curstyle.plist",
    "~/Library/Saved Application State/io.github.narcissus-tazetta.curstyle.savedState",
  ]

  caveats <<~EOS
    Curstyle is not notarized. If macOS blocks the first launch, open
    System Settings → Privacy & Security and choose "Open Anyway".
  EOS
end
