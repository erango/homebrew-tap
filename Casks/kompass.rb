cask "kompass" do
  version "1.0.13"
  sha256 "ae079988e51dea1df5a68e0a5b91b6b5f5dfeeb73d2ae13cc35d9627e93f5fe0"

  url "https://github.com/erango/kompass/releases/download/v#{version}/Kompass-#{version}.dmg"
  name "Kompass"
  desc "Beautiful, fast Kubernetes desktop app (Rust + Dioxus)"
  homepage "https://github.com/erango/kompass"

  app "Kompass.app"

  caveats <<~EOS
    Kompass is not yet signed or notarized. On first launch, right-click the
    app and choose Open, or run:
      xattr -dr com.apple.quarantine "#{appdir}/Kompass.app"
  EOS
end
