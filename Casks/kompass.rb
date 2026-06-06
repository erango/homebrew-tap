cask "kompass" do
  version "1.0.8"
  sha256 "25112502411143471835ae59ec5a1c9e06052857b9cb5dfd62addf87e82b44a3"

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
