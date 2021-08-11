class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  version "0.1.85"
  url "https://github.com/bridgecrewio/yor/releases/download/" + version + "/yor-" + version + "-darwin-amd64.tar.gz"
  sha256 "2f6223b9196f335295afa920ea4a04093cf48b8970bd35d9cb15783e2a4919b9"
  license "Apache-2.0"

  def install
    bin.install "yor"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
