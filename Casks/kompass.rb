cask "kompass" do
  version "1.0.22"
  sha256 "80adf12dfffa6bed634cae62bd10d2306f9f1f55afd1b5789def8e5979364f0c"

  url "https://github.com/erango/kompass/releases/download/v#{version}/Kompass-#{version}.dmg"
  name "Kompass"
  desc "Beautiful, fast Kubernetes desktop app (Rust + Dioxus)"
  homepage "https://github.com/erango/kompass"

  depends_on :macos

  app "Kompass.app"
end
