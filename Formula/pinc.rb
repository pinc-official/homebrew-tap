class Pinc < Formula
  desc "Component based CMS with git like principles"
  homepage "https://github.com/pinc-official/pinc-playground"
  license "MIT"

  depends_on "vips"

  on_macos do
    on_arm do
      url "https://github.com/pinc-official/homebrew-tap/releases/download/0.0.1/pinc-0.0.1-aarch64-macos.tar.gz"
      sha256 "d84959b4090bbb7dc9a1413cd932732d0c9acd4deb3e15cde19a7d91a409744e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/pinc-official/homebrew-tap/releases/download/0.0.1/pinc-0.0.1-x86_64-linux-gnu.tar.gz"
      sha256 "e90baf58e8ae907c1c98714a2a2acd094753007210054b7cd3e64ec94e19b1ad"
    end
  end

  def install
    bin.install "bin/pinc"
  end

  test do
    system "#{bin}/pinc", "--version"
  end
end
