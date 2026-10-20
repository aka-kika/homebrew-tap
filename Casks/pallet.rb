# typed: strict
# frozen_string_literal: true

cask "pallet" do
  version "2.0.4"
  sha256 "844b44dadb1ee3a9bdd4b105c85913a7a25ad269c112267ccc75e5d7aca60421"

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
