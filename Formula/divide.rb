class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.10.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.10.0/divide-0.10.0-macos-arm64.tar.gz"
      sha256 "45cc1fe8889d4233d4ba8e08a2fb63a775fd534cd8fafb0ad19b74912abfc75c"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.10.0/divide-0.10.0-macos-x86_64.tar.gz"
      sha256 "5303a59ff3ba88de453aa61784a52b823355afcdc9917392f7845840daaef824"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.10.0/divide-0.10.0-linux-arm64.tar.gz"
      sha256 "be5a52f52b54847ec10279822e20be7b797fc75199562527841c095db8b844e2"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.10.0/divide-0.10.0-linux-x86_64.tar.gz"
      sha256 "d1173874b868d46b7238f286633575934c9137d6b9c5761bf91f2b6855029336"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
