cask "monitor-glue" do
  version "1.0.0"
  sha256 "1bca48cc009661855d867dd4ba7f26f3afad46f79755fff11332a13d783da1dc"

  url "https://github.com/erango/monitor-glue/releases/download/v#{version}/MonitorGlue.zip"
  name "Monitor Glue"
  desc "Restores window positions and sizes per external monitor when you reconnect"
  homepage "https://github.com/erango/monitor-glue"

  livecheck do
    url :url
    strategy :github_latest
  end

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
