class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.9.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.9.0/divide-0.9.0-macos-arm64.tar.gz"
      sha256 "1c41fc4b7ecd037e569de3b3f876b9a536d1d16b6790aa5b277855d5261d3a96"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.9.0/divide-0.9.0-macos-x86_64.tar.gz"
      sha256 "88be0e3ff576ec23e4565fe74bc16cb6c2e098177276cef437cf2d5d60cfdfb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.9.0/divide-0.9.0-linux-arm64.tar.gz"
      sha256 "038e1fd4c05de83e5095dbd03aaa82fd22fabdbb7e71ad1593a93137195fcc3c"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.9.0/divide-0.9.0-linux-x86_64.tar.gz"
      sha256 "354feeb9518b6fb0c102a32689a54e9b860884b47326319f5bd23b1efd3fd405"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
