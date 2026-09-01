cask "rubarb" do
  version "4.0.1"
  sha256 "a58a7ef7091dc771761ca6ba063212bcfcb3a2bae98f3b2fec885f18958d8994"

  url "https://rubarb.bar/rubarb.bar-#{version}.zip"
  name "Rubarb"
  desc "Scroll to control display brightness and volume"
  homepage "https://rubarb.bar"

  livecheck do
    url "https://rubarb.bar/appcast.xml"
    strategy :sparkle
  end

  app "rubarb.bar.app"

  zap trash: [
    "~/Library/Preferences/com.theralls.rubarb.plist",
    "~/Library/Saved Application State/com.theralls.rubarb.savedState",
  ]
end
