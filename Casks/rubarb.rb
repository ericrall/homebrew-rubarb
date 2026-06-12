cask "rubarb" do
  version "2.4.11"
  sha256 "e75186d3cff9661ff32575f3ded1e5d61aa0f5b90b71d4893f632c215737f945"

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
