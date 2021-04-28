class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  url "https://github.com/bridgecrewio/yor.git", tag: "0.0.56", revision: "a744609ef4d7876571b635427dc71cbc36b919e8"
  sha256 "5c3e44b89ced43365bb91405001fbb7eef5b48b0cea61ace68b6a44efbbb2b8e"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/bridgecrewio/yor"
    path.install Dir["*"]
    cd path do
      system "go", "build", "-o", "#{bin}/yor"
    end
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
