class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io/"
  url "https://github.com/meroxa/cli/releases/download/v0.2.3/meroxa_0.2.3_Darwin_x86_64.tar.gz"
  sha256 "54f24817bf14e1cde5675c8cbed38a1b9786c8e0"
  license "Apache-2.0"
  
  def install
    bin.install "meroxa"
  end

  test do
    system bin/"meroxa", "version"
  end
end
