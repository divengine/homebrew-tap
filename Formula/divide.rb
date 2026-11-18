class Divide < Formula
  desc "Terminal IDE for the Divengine projects, starting with the Div template language"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.1.0/divide-0.1.0-macos-arm64.tar.gz"
      sha256 "8e2736cb4c17ba7611865307e8041c2f08755e963b2225f65f13d451b75309ab"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.1.0/divide-0.1.0-macos-x86_64.tar.gz"
      sha256 "dae1dcc409c730a388348a1e59dd72e840c7463d6d7f44d524009181811fa9c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.1.0/divide-0.1.0-linux-arm64.tar.gz"
      sha256 "3e3fa08900958ed56038ad2f2ec37806ad473a9fac57090c65b766d96ca1c432"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.1.0/divide-0.1.0-linux-x86_64.tar.gz"
      sha256 "fef013ebc708d8d03103496f031e310f24ac6d6c170446d89ade80bec0a5d694"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
