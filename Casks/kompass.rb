cask "kompass" do
  version "1.0.25"
  sha256 "b389860e8a23c72db3f056105432ab4d873bf19d0c62c2c80d553cd252b1dcfa"

  url "https://github.com/erango/kompass/releases/download/v#{version}/Kompass-#{version}.dmg"
  name "Kompass"
  desc "Beautiful, fast Kubernetes desktop app (Rust + Dioxus)"
  homepage "https://erango.github.io/kompass/"

  depends_on :macos

  app "Kompass.app"
end
