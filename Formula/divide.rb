class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.4.1/divide-0.4.1-macos-arm64.tar.gz"
      sha256 "ee60e38dce351ea7335e9a0091521e48f9583234db1a304b6de46f9de1754ce1"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.4.1/divide-0.4.1-macos-x86_64.tar.gz"
      sha256 "f8ac3e4185fd5259ce88f52a0751e4aff5c77391731fd456598016547bd5dc7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.4.1/divide-0.4.1-linux-arm64.tar.gz"
      sha256 "219f2f16d292d5f4f8551484fc8f8eabcba598e47a00733462607082a91135cd"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.4.1/divide-0.4.1-linux-x86_64.tar.gz"
      sha256 "03b8bacbad9d7e92add0f53b8e6058015267c04763352c4e9afac461d9f8e525"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
