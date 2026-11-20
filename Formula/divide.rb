class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.4.0/divide-0.4.0-macos-arm64.tar.gz"
      sha256 "38f9363db03887857d8ad211e3c8c63b8923042df2d6fdfe5cc437dfd26bcff3"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.4.0/divide-0.4.0-macos-x86_64.tar.gz"
      sha256 "d0ec4ea3d94aa4adba7f30d2b556837e3a5220b069190739f4b27d4ffd139b39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.4.0/divide-0.4.0-linux-arm64.tar.gz"
      sha256 "72669bd3b0ba5a7663de00390b782387de8f5017afeb02a0c2a3a69f3fa46abb"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.4.0/divide-0.4.0-linux-x86_64.tar.gz"
      sha256 "33862ab6f826e2e14697c86ee046c493ade597405b45c27268a43bf0b6c9daef"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
