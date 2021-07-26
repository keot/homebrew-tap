class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  version "0.1.85"
  url "https://github.com/bridgecrewio/yor.git", tag: "0.1.85", revision: "4b31cf47f2838eb0c737dcf88f62f626e2f661b1"
  sha256 "214078db6f69eeade5552d21a35c66b66843c7849ccb3d91e15dcc1755a69e3b"
  license "Apache-2.0"

  def install
    bin.install "yor"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
