class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  url "https://github.com/bridgecrewio/yor.git", tag: "0.2.0-fbdaa7d", revision: "fbdaa7d0468da5b7020a9ee0bc22244da93ab588"
  sha256 "5c3e44b89ced43365bb91405001fbb7eef5b48b0cea61ace68b6a44efbbb2b8e"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
