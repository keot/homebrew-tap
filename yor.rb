class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  url "https://github.com/bridgecrewio/yor.git", tag: "0.1.38", revision: "6a2e520ad938a6aa57c6fc75dfd0f6270c43c6fa"
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
