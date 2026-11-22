class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.7.0/divide-0.7.0-macos-arm64.tar.gz"
      sha256 "e6505bec4679430b953aa03b77eb4b5fc240e1b71a520b8de1d9055331375c8c"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.7.0/divide-0.7.0-macos-x86_64.tar.gz"
      sha256 "1b12e9a10ed9ce9e06b407df24d83b12bc81d622b3e4ab86382d0f1543f12247"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.7.0/divide-0.7.0-linux-arm64.tar.gz"
      sha256 "49890d711f6e75b49f4dff5f9f92ebbd53dfbc8c71fe3232c920161c28273608"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.7.0/divide-0.7.0-linux-x86_64.tar.gz"
      sha256 "f801f96e106adbae2b8c911facfbcb8a1d1151a9eb60e5c6d7441bdb866f0133"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
