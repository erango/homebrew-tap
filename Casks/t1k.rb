cask "t1k" do
  version "0.1.18"
  sha256 "6542f29ffc0bc7883415585de5780b8fa16447a97aa8e56eb978455bf9e6760f"

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
