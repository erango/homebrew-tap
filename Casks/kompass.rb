cask "kompass" do
  version "1.0.2"
  sha256 "1c6f92d3419cda6fe1e7963b9d730d34e043f9f50172d1b482541be559f31144"

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
