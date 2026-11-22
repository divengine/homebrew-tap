class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.6.0/divide-0.6.0-macos-arm64.tar.gz"
      sha256 "3e32758d78234d99521a6a9e64500146600c50b2277d146cf6fe2c0e19a7e745"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.6.0/divide-0.6.0-macos-x86_64.tar.gz"
      sha256 "e50b2f101b2c8bb2c4f127e5739d38e12cee90aaf96c243b3995882a16df37ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.6.0/divide-0.6.0-linux-arm64.tar.gz"
      sha256 "097a8ade6fd97071d29a6624c8c84d06dbf201e27ec6a5643bed661e96b1e015"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.6.0/divide-0.6.0-linux-x86_64.tar.gz"
      sha256 "54ed7b5c874081fad057d19c48ff9b9e2850acb6d0500f58ad4cdf0ed8ffcf9e"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
