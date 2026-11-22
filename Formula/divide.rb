class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.6.1/divide-0.6.1-macos-arm64.tar.gz"
      sha256 "d3b0a3c8b66532c4d22ee913c4bf18a01ae26f21729ad70e4c921db2cce8df87"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.6.1/divide-0.6.1-macos-x86_64.tar.gz"
      sha256 "3d4e96ae7b4a8791997ee988850360577c87b46c5a71900c2573656969e019b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.6.1/divide-0.6.1-linux-arm64.tar.gz"
      sha256 "a9105de6d678cb57943f1ed72b35e1100947132390080f6aa146620a11cef381"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.6.1/divide-0.6.1-linux-x86_64.tar.gz"
      sha256 "7c0b9a0d5dca3311f6c4382b8741a658d3a51bae5ba8eaaad0e6a386461bd734"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
