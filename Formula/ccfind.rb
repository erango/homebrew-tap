class Ccfind < Formula
  desc "Find and resume Claude Code sessions across every directory"
  homepage "https://github.com/erango/ccfind"
  url "https://github.com/erango/ccfind/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "033b0af80bb7bc8115863b775eed4ec5c16870635773c4b6aea4ed2666999fcc"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bin/ccfind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccfind --version")
  end
end
