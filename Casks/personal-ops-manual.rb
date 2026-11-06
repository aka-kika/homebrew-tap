# typed: strict
# frozen_string_literal: true

cask "personal-ops-manual" do
  version "2.4.0"
  sha256 "379647b0c993e67507bdf2863c31efa1cbbb52cef23290eca69c1fbd80ddb402"

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
