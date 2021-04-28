class Yor < Formula
  desc "Extensible auto-tagger for your IaC files"
  homepage "https://www.bridgecrew.io"
  url "https://github.com/bridgecrewio/yor.git", tag: "0.0.55", revision: "0cc6cae0adcfbc83049082e22ba5abc8e6bfaa55"
  sha256 "5c3e44b89ced43365bb91405001fbb7eef5b48b0cea61ace68b6a44efbbb2b8e"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath

    bin_path = buildpath/"src/github.com/bridgecrewio/yor"
    # Copy all files from their current location (GOPATH root)
    bin_path.install Dir["*"]

    # Stage dependencies. This requires the "require language/go" line above
    Language::Go.stage_deps resources, buildpath/"src"
    cd bin_path do
        # Install the compiled binary into Homebrew's `bin` - a pre-existing
        # global variable
        system "go", "build", "-o", bin/"yor", "."
    end
  end

  test do
    system "#{bin}/yor", "--help"
  end
end
