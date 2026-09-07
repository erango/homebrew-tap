class Ccfind < Formula
  desc "Find and resume Claude Code sessions across every directory"
  homepage "https://github.com/erango/ccfind"
  url "https://github.com/erango/ccfind/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "eadf4f1dc1f335f97dde22ea56265be58c03d010d5202159526e6f1eec0b884d"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bin/ccfind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccfind --version")
  end
end
