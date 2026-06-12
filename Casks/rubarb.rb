cask "rubarb" do
  version "2.4.9"
  sha256 "d2d53d3c4d7ac8ee982f14ecfaed9a43d4669c609b1b735b1bbe0a80a739ce2e"

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
