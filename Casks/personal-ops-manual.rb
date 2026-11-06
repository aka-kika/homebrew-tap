# typed: strict
# frozen_string_literal: true

cask "personal-ops-manual" do
  version "2.4.3"
  sha256 "7b68e0a3d669e695814a95e567dbfa978743d00cde3dd4a4980118f887a68b5c"

  url "https://github.com/aka-kika/personal-ops-manual/releases/download/v#{version}/Personal-Ops-Manual-#{version}.zip"
  name "Personal Ops Manual"
  desc "Manual for your own setup, one Markdown page per thing, read by AI agents"
  homepage "https://ops-manual.akakika.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Personal Ops Manual.app"

  # The documents folder (your pages) is deliberately left alone.
  zap trash: "~/Library/Preferences/com.kikalab.opsmanual.plist"
end
