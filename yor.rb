class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  url "https://github.com/bridgecrewio/yor.git", tag: "0.0.54", revision: "228c9a9e1a111c3fe2f570e0d24679e2371c5f70"
  sha256 "5c3e44b89ced43365bb91405001fbb7eef5b48b0cea61ace68b6a44efbbb2b8e"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "gobuild.sh"
    bin.install ".gobuild/bin/yor" => "yor"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
