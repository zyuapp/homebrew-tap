cask "just-copy" do
  version "1.0.1"
  sha256 "6cddbc5d4052904370afe6a824216ace04257dc99587e0b915dfc900ef1a8195"

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
