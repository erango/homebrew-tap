cask "t1k" do
  version "0.1.20"
  sha256 "274993208829bb7d864448d4104fb198ceec5448a47bafee0f0f0e1f59b1dc7d"

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
