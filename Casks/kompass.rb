cask "kompass" do
  version "1.0.23"
  sha256 "42cbeb80024057fe12852efab28a9a137a225c63ea40d1f6c1828b610e83c121"

  url "https://github.com/erango/kompass/releases/download/v#{version}/Kompass-#{version}.dmg"
  name "Kompass"
  desc "Beautiful, fast Kubernetes desktop app (Rust + Dioxus)"
  homepage "https://github.com/erango/kompass"

  depends_on :macos

  app "Kompass.app"
end
