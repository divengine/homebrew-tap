class Divide < Formula
  desc "Terminal IDE for the Divengine projects, starting with the Div template language"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.2.0/divide-0.2.0-macos-arm64.tar.gz"
      sha256 "8e62bd820418c296d26ffb503d349bd3d294e94735de7b43739a712dc716b75c"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.2.0/divide-0.2.0-macos-x86_64.tar.gz"
      sha256 "ccf5a1102f21555491dfccab9c6bc5ae5b728d1e0f75ffad6242e72512fc9004"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.2.0/divide-0.2.0-linux-arm64.tar.gz"
      sha256 "60fb30f3253f39374a698c693fac29f07d506ee8414fef875b545291293ea811"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.2.0/divide-0.2.0-linux-x86_64.tar.gz"
      sha256 "f614d3bc2a9a944ee8491ae219e065e3c04935a8377d4edff1e87f5d3223b7af"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
