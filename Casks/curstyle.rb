cask "curstyle" do
  version "0.1.1"
  sha256 "bc12cd661a868a2c585a03a40408b4d71630adecdd2038578dbab33a4f8c165b"

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
