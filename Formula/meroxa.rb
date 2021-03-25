class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io/"
  url "https://github.com/meroxa/cli/releases/download/v0.2.3/meroxa_0.2.3_Darwin_x86_64.tar.gz"
  sha256 "678c9b98c05147eda95bc5fde5ff60d1b3f1c75fabf4102816240daaf395b657"
  license "Apache-2.0"
  
  def install
    bin.install "meroxa"
  end

  test do
    system bin/"meroxa", "version"
  end
end
