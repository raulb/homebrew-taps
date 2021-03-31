class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io/"
  url "https://github.com/meroxa/cli/releases/download/v0.3.1/meroxa_0.3.1_Darwin_x86_64.tar.gz"
  sha256 "182e54fc3068384607083bfc40863b1edf5691d0898b0ca93c2ca237e38ec04c"
  license "Apache-2.0"
  
  def install
    bin.install "meroxa"
  end

  test do
    system bin/"meroxa", "version"
  end
end
