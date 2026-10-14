# typed: strict
# frozen_string_literal: true

cask "pallet" do
  version "2.0.3"
  sha256 "2964d1b931b9eeba72ac3154a7d05e2ddca30da0abdd7ec65432998e36cf0488"

  url "https://github.com/aka-kika/pallet/releases/download/v#{version}/Pallet-#{version}.zip"
  name "Pallet"
  desc "Color palette collection that reads the palette out of any image or screen area"
  homepage "https://akakika.com/pallet/"

  livecheck do
    url "https://github.com/aka-kika/pallet"
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Pallet.app"

  zap trash: [
    "~/Library/Application Support/Palette",
    "~/Library/Preferences/com.akakika.pallet.plist",
  ]
end
