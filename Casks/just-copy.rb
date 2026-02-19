cask "just-copy" do
  version "1.0.0"
  sha256 "4d6227b3df0ed35f301c9e9019c8720f69b1b637aa8c8eb9591a0b50f8bb37f3"

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
