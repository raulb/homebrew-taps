class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io/"
  url "https://github.com/meroxa/cli/releases/download/v0.2.2/meroxa_0.2.2_Darwin_x86_64.tar.gz"
  sha256 "955d5075ce732c07376758219fb1d75f7d08ec839bdc8f21086caaf3a3e93ae9"
  license "Apache-2.0"

  def install
    bin.install "meroxa"
  end

  test do
    system bin/"meroxa", "version"
  end
end
