# typed: strict
# frozen_string_literal: true

cask "mcpock" do
  version "1.10.1"
  sha256 "4e0fd47d8da96c491f375dc7c94934db164a853a438aacd6469590edfd4b8319"

  url "https://github.com/aka-kika/mcpock/releases/download/v#{version}/mcpock.dmg"
  name "mcpock"
  desc "Menu bar app that checks every MCP server your AI agents use"
  homepage "https://mcpock.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # mcpock updates itself with Sparkle; brew upgrade leaves it alone.
  auto_updates true
  depends_on macos: :tahoe

  app "mcpock.app"

  zap trash: [
    "~/Library/Application Support/mcpock",
    "~/Library/Caches/com.mcpock.app",
    "~/Library/Group Containers/P5RB3W3D58.com.mcpock",
    "~/Library/HTTPStorages/com.mcpock.app",
    "~/Library/Preferences/com.mcpock.app.plist",
  ]
end
