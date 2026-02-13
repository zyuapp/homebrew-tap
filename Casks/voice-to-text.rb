cask "voice-to-text" do
  version "1.0"
  sha256 "3efb44a04872f2ce9c1acd74cd39a02551a318b17cb931d54adc51f75020f139"

  url "https://github.com/zyuapp/VoiceToText/releases/download/v#{version}/VoiceToText-v#{version}-macos-arm64.zip",
      verified: "github.com/zyuapp/VoiceToText/"
  name "VoiceToText"
  desc "System-wide offline voice dictation for macOS"
  homepage "https://github.com/zyuapp/VoiceToText"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "VoiceToText.app"

  zap trash: [
    "~/Library/Application Support/VoiceToText",
    "~/Library/Preferences/com.zyu.VoiceToText.plist",
  ]

  caveats <<~EOS
    This app is unsigned and not notarized, so macOS may show a security warning on first launch.
  EOS
end
