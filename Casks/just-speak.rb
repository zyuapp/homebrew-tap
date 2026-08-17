cask "just-speak" do
  version "1.3.0"
  sha256 "1571204c70d4d6389e98c81f366401783d0e5f5954001a66399505fa3ff320e7"

  url "https://github.com/zyuapp/just-speak/releases/download/v#{version}/JustSpeak-v#{version}-macos-arm64.dmg",
      verified: "github.com/zyuapp/just-speak/"
  name "JustSpeak"
  desc "System-wide offline voice dictation"
  homepage "https://github.com/zyuapp/just-speak"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Just Speak.app"

  zap trash: [
    "~/Library/Application Support/just-speak",
    "~/Library/Application Support/VoiceToText",
    "~/Library/Preferences/com.zyu.just-speak.plist",
    "~/Library/Preferences/com.zyu.VoiceToText.plist",
  ]
end
