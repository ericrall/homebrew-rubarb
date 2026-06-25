cask "rubarb" do
  version "2.6.2"
  sha256 "b818150a8f0ea4255ebd9984862658a6278edbf53177cb2e4f68735049fdafb2"

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
