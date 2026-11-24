cask "curstyle" do
  version "0.2.1"
  sha256 "16459851da549399e7d5a19ce6ea5f75e29587ec04a1219c85dda85d9a144d65"

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
