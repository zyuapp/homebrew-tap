cask "just-copy" do
  version "1.0.2"
  sha256 "9e2c6da734044c9750a3f1f28238b3f0d53e94248e0258430707add1fdd34cac"

  url "https://github.com/zyuapp/just-copy/releases/download/v#{version}/JustCopy-v#{version}-macos-arm64.zip"
  name "JustCopy"
  desc "Copy text from unselectable screen regions with OCR"
  homepage "https://github.com/zyuapp/just-copy"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "JustCopy.app"

  zap trash: [
    "~/Library/Preferences/com.local.justcopy.plist",
  ]

  caveats <<~EOS
    This app is unsigned and not notarized, so macOS may show a security warning on first launch.
  EOS
end
