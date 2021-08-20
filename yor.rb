# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.yor.io"
  version "0.1.95"
  license "Apache-2.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.95/yor_0.1.95_darwin_amd64.tar.gz"
      sha256 "4d448e49937df576341547ac382a18a8ebaf84c3550b6a9d3f640ec8982ffb6e"
    elsif Hardware::CPU.arm?  # please translate automagically
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.95/yor_0.1.95_darwin_amd64.tar.gz"
      sha256 "4d448e49937df576341547ac382a18a8ebaf84c3550b6a9d3f640ec8982ffb6e"

    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bridgecrewio/yor/releases/download/0.1.95/yor_0.1.95_linux_amd64.tar.gz"
      sha256 "cc884b43ef03ae8cb55455828e5512d3a8f97aa01db7a2dda276d86bfbead195"
    end
  end

  def install
    bin.install "yor"
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
