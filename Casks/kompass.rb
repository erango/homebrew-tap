cask "kompass" do
  version "1.0.3"
  sha256 "6167467b21db8e7e9d3a1d54b1bce088c4c2af38320ac72163ecbce3b66d9f9e"

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
