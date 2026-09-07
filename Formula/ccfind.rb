class Ccfind < Formula
  desc "Find and resume Claude Code sessions across every directory"
  homepage "https://github.com/erango/ccfind"
  url "https://github.com/erango/ccfind/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "92cebcee734802c6cf67c5fb7dd374b1b79d246bf964f9fe11c1349eaa22c5df"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bin/ccfind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccfind --version")
  end
end
