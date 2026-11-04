cask "kompass" do
  version "1.0.24"
  sha256 "43ebf5bc9fb70e86cde312cf3ab94dcd541b36250c2bc272a066f3a8d9c4962f"

  url "https://github.com/erango/kompass/releases/download/v#{version}/Kompass-#{version}.dmg"
  name "Kompass"
  desc "Beautiful, fast Kubernetes desktop app (Rust + Dioxus)"
  homepage "https://github.com/erango/kompass"

  depends_on :macos

  app "Kompass.app"
end
