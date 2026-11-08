cask "monitor-glue" do
  version "1.3.1"
  sha256 "abc1a3291d31c6495def97f1d6478c26accd016bf00bc8cec19c142ed762138a"

  url "https://github.com/erango/monitor-glue/releases/download/v#{version}/MonitorGlue.zip"
  name "Monitor Glue"
  desc "Restores window positions and sizes per external monitor when you reconnect"
  homepage "https://github.com/erango/monitor-glue"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MonitorGlue.app"

  uninstall quit: "com.erango.monitorglue"

  zap trash: [
    "~/Library/Application Support/MonitorGlue",
    "~/Library/Preferences/com.erango.monitorglue.plist",
  ]

  caveats <<~EOS
    Monitor Glue needs Accessibility access to read and move other apps' windows.
    Grant it on first launch, or in System Settings > Privacy & Security > Accessibility.
  EOS
end
