class Ccfind < Formula
  desc "Find and resume Claude Code sessions across every directory"
  homepage "https://github.com/erango/ccfind"
  url "https://github.com/erango/ccfind/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "118e0da9c92a88b984a8025813f62d3ef8cd937d95aa4bad828bd3a25e661da8"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bin/ccfind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccfind --version")
  end
end
