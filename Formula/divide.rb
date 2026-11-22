class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.8.0/divide-0.8.0-macos-arm64.tar.gz"
      sha256 "28a671b3ea0a1c055f9aea3dd11644b1e2462ddb0ab26a8de30d6b2b00c06889"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.8.0/divide-0.8.0-macos-x86_64.tar.gz"
      sha256 "babf6f72beb611f7574c4e96ae0fa255bf3eeee0587d0b3a921f3a8e385d9646"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.8.0/divide-0.8.0-linux-arm64.tar.gz"
      sha256 "34842495e30180959ac3dde3e266d72efdbf7d8137c4060d25315411a8633763"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.8.0/divide-0.8.0-linux-x86_64.tar.gz"
      sha256 "b05517e78ef18fa5b0a6018ac17765e32a767282ab3b9f48c00122b7a5e09ec8"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
