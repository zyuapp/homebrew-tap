cask "just-speak" do
  version "1.1.0"
  sha256 "e07c27af9a0a043386d1f353b3ad9cf2588b9f2195f78b61f4a1fcb4e1bb5d5d"

  url "https://github.com/zyuapp/just-speak/releases/download/v#{version}/JustSpeak-v#{version}-macos-arm64.zip",
      verified: "github.com/zyuapp/just-speak/"
  name "JustSpeak"
  desc "System-wide offline voice dictation for macOS"
  homepage "https://github.com/zyuapp/just-speak"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "JustSpeak.app"

  zap trash: [
    "~/Library/Application Support/just-speak",
    "~/Library/Application Support/VoiceToText",
    "~/Library/Preferences/com.zyu.just-speak.plist",
    "~/Library/Preferences/com.zyu.VoiceToText.plist",
  ]

  caveats <<~EOS
    This app is unsigned and not notarized, so macOS may show a security warning on first launch.
  EOS
end
