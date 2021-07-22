class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  version "0.1.84"
  url "https://github.com/bridgecrewio/yor/releases/download/" + version + "/yor-" + version + "-darwin-amd64.tar.gz"
  sha256 "214078db6f69eeade5552d21a35c66b66843c7849ccb3d91e15dcc1755a69e3b"
  license "Apache-2.0"

  def install
    bin.install "yor"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
