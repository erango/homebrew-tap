cask "kompass" do
  version "1.0.27"
  sha256 "13b7eb6923c30bbab1cd9d6184198169c8aada83a25b7ee4699443e03a1d15f7"

  url "https://github.com/erango/kompass/releases/download/v#{version}/Kompass-#{version}.dmg"
  name "Kompass"
  desc "Beautiful, fast Kubernetes desktop app (Rust + Dioxus)"
  homepage "https://erango.github.io/kompass/"

  depends_on :macos

  app "Kompass.app"
end
