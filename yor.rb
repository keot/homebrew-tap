class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  version: "0.1.84"
  url "https://github.com/bridgecrewio/yor/releases/download/$($version)/yor-$($version)-darwin-amd64.tar.gz"
  sha256 "5c3e44b89ced43365bb91405001fbb7eef5b48b0cea61ace68b6a44efbbb2b8e"
  license "Apache-2.0"

  def install
    bin.install "yor"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
