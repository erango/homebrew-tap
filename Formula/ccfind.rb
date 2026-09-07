class Ccfind < Formula
  desc "Find and resume Claude Code sessions across every directory"
  homepage "https://github.com/erango/ccfind"
  url "https://github.com/erango/ccfind/archive/refs/tags/v0.2.2.tar.gz"
  sha256 "a04f757f5f33dd1e2be47f4e7017a423d9c516d0baa99e49206be735958f6292"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "bin/ccfind"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ccfind --version")
  end
end
