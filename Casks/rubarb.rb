cask "rubarb" do
  version "2.4.13"
  sha256 "799a73cdecde9cfdfeda4c069129d02e068f3cc016967344d0ecb6cc0bc55f28"

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
