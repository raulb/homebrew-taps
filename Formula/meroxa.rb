# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Meroxa < Formula
  desc "The Meroxa CLI"
  homepage "https://meroxa.io"
  version "0.3.4"
  license "Apache 2.0"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/raulb/cli/releases/download/v0.3.4/meroxa_0.3.4_Darwin_x86_64.tar.gz"
    sha256 "a7e22bff2bd88b377757de9fc3a3c205c9dc9199a35524bd9958ef1f1d1a09d1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/raulb/cli/releases/download/v0.3.4/meroxa_0.3.4_Darwin_arm64.tar.gz"
    sha256 "a2ddc2348a96c95f39875fe5a8c9c22ca5acb16b23261710428ea6a101fb30f4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/raulb/cli/releases/download/v0.3.4/meroxa_0.3.4_Linux_x86_64.tar.gz"
    sha256 "3d33035c8985d746612694212fc09cf08eed98b35b93da0dc11f40d852d75013"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/raulb/cli/releases/download/v0.3.4/meroxa_0.3.4_Linux_arm64.tar.gz"
    sha256 "9f7404efb6fe3792455640d32db2afdecd0bba59f6585ea5db40202a059b677e"
  end

  head "https://github.com/raulb/cli.git"

  depends_on "go"

  def install
    bin.install "meroxa"
  end

  test do
    shell_output("#{bin}/meroxa version").match(/0.3.4/)
  end
end
