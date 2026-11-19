class Divide < Formula
  desc "Terminal IDE for the Divengine projects, starting with the Div template language"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.3.0/divide-0.3.0-macos-arm64.tar.gz"
      sha256 "f128475484838b6e8c7c5b7af9f08a5dfdff8011f5b67c8bca8838326e7f7a1f"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.3.0/divide-0.3.0-macos-x86_64.tar.gz"
      sha256 "259af08b190f05572e01e709147850850d416e49ca6e6b1e937b2f88160634e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.3.0/divide-0.3.0-linux-arm64.tar.gz"
      sha256 "96b1dfdadd75adfc8244f4a13a782e9dbb98e15a9e52c5ec31efed45f6867faf"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.3.0/divide-0.3.0-linux-x86_64.tar.gz"
      sha256 "82a56c014b53292f99c4f40abd6dd0130bcb94f07ffb7b138e3ca262615c4aef"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
