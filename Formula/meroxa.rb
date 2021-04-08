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
    sha256 "03d0420788e5ab714b6495cc215e097ab129bd890a0fdd2fd25ac37af89adf07"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/raulb/cli/releases/download/v0.3.4/meroxa_0.3.4_Darwin_arm64.tar.gz"
    sha256 "51b55ff6b19f416f685efdfc040557e7b3b34be30d78c38695f2e12e4e3e7637"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/raulb/cli/releases/download/v0.3.4/meroxa_0.3.4_Linux_x86_64.tar.gz"
    sha256 "87f7b2981059a1d2a50a4d6f3f66983656c69173d32a451afe53b4a813094e9c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/raulb/cli/releases/download/v0.3.4/meroxa_0.3.4_Linux_arm64.tar.gz"
    sha256 "dc2a11b852711321ce0edd120a17381a645d4a2a85119154ecdcf4bfd37c1970"
  end

  head "https://github.com/raulb/cli.git"

  def install
    bin.install "meroxa"
    prefix.install_metafiles
    bash_completion.install "etc/completion/meroxa.completion.sh"
    zsh_completion.install "etc/completion/meroxa.completion.zsh" => "meroxa"
    fish_completion.install "etc/completion/meroxa.completion.fish"
    man.install "etc/man/man1"
  end

  test do
    shell_output("#{bin}/meroxa version").match(/0.3.4/)
  end
end
