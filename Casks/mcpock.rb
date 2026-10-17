# typed: strict
# frozen_string_literal: true

cask "mcpock" do
  version "1.10.7"
  sha256 "212cfd969d142694f7b818e92f4dc0404b4371d9fe815c3bd1ce7c60153fcf20"

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
