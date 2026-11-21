class Divide < Formula
  desc "IDE for developing generators with the Divengine ecosystem"
  homepage "https://github.com/divengine/divide"
  license "GPL-3.0-or-later"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.5.0/divide-0.5.0-macos-arm64.tar.gz"
      sha256 "9de975db0fd40cc0d4b24837ef218b4e75308ea28bead0c830984ca30d51b3cb"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.5.0/divide-0.5.0-macos-x86_64.tar.gz"
      sha256 "562aa3a57f43f400d7ce816611bd6df5cc4b2fb576b5fcd9294b1ada3c2ca855"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/divengine/divide/releases/download/v0.5.0/divide-0.5.0-linux-arm64.tar.gz"
      sha256 "a62228e1f99183c02f6277b40c10b444288da990c25270ea57fb92be3e3896bf"
    end
    on_intel do
      url "https://github.com/divengine/divide/releases/download/v0.5.0/divide-0.5.0-linux-x86_64.tar.gz"
      sha256 "45a62675af366a397c90d217900a9e1066bf7a341e26816162ac0b34ad2513b5"
    end
  end

  def install
    bin.install "divide"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/divide --version")
  end
end
