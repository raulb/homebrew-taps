class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io/"
  url "https://github.com/meroxa/cli/releases/download/v0.3.3/meroxa_0.3.3_Darwin_x86_64.tar.gz"
  sha256 "858db9ae3f50513253a20f94f64fd4515737de130718c653391c9f756af982ea"
  license "Apache-2.0"
  version "0.3.3"
  
  def install
    bin.install "meroxa"
  end

  test do
    system bin/"meroxa", "version"
  end
end
