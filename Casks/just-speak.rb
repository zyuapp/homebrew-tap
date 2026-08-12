cask "just-speak" do
  version "1.2.0"
  sha256 "b3800cdab83426b784aae16c76e872fd66ff50da12935e0f3c2e3402f28bca2d"

  url "https://github.com/zyuapp/just-speak/releases/download/v#{version}/JustSpeak-v#{version}-macos-arm64.zip",
      verified: "github.com/zyuapp/just-speak/"
  name "JustSpeak"
  desc "System-wide offline voice dictation"
  homepage "https://github.com/zyuapp/just-speak"

  depends_on arch: :arm64
  depends_on macos: :sonoma

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
