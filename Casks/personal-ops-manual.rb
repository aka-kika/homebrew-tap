# typed: strict
# frozen_string_literal: true

cask "personal-ops-manual" do
  version "2.2.4"
  sha256 "a70aaedede5e91da51d080e56dfe19f3115cdb8ed271f8368bd2e87e63ec827f"

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
