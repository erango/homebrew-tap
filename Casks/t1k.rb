cask "t1k" do
  version "0.1.5"
  sha256 "2af825c23c33756421eab6ec7d774c1fd1d138dd3645c077753ae54856bec7c2"

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
