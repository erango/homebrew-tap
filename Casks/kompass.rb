cask "kompass" do
  version "1.0.5"
  sha256 "b296871d32bbe2940c664db3b9794190396349b2d771661b605751befe8ab4f2"

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
