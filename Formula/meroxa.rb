class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io/"
  url "https://github.com/meroxa/cli/releases/download/v0.3.0/meroxa_0.3.0_Darwin_x86_64.tar.gz"
  sha256 "4614400016e0aea189e11de2313cd59431391fcdfbf6dd55d7df6ecee39b6f0e"
  license "Apache-2.0"
  
  def install
    bin.install "meroxa"
  end

  test do
    system bin/"meroxa", "version"
  end
end
