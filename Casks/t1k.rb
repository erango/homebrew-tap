cask "t1k" do
  version "0.1.4"
  sha256 "7d8bdf82748162c47d885162729b0eb0ce0fdfbaef81ac88e922fca32d9efce7"

  url "https://github.com/erango/t1k/releases/download/v#{version}/T1K-#{version}.zip"
  name "T1K"
  desc "Terminal for running many coding-agent tabs at once"
  homepage "https://erango.github.io/t1k/"

  livecheck do
    url "https://raw.githubusercontent.com/erango/t1k/main/appcast.xml"
    strategy :sparkle
  end

  # T1K updates itself (Sparkle); brew upgrade skips it unless --greedy.
  auto_updates true
  depends_on macos: :ventura

  app "T1K.app"
  binary "#{appdir}/T1K.app/Contents/MacOS/t1k"

  zap trash: [
    "~/.config/t1k",
    "~/Library/Application Support/t1k",
    "~/Library/Caches/com.erango.t1k",
    "~/Library/HTTPStorage/com.erango.t1k",
    "~/Library/Preferences/com.erango.t1k.plist",
  ]
end
