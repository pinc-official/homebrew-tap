class Pinc < Formula
  desc "Component based CMS with git like principles"
  homepage "https://github.com/pinc-official/pinc-playground"
  license "MIT"

  depends_on "vips"

  bottle do
    root_url "https://github.com/pinc-official/homebrew-tap/releases/download/0.0.2"
  end

  depends_on "vips"

  def install
    bin.install "bin/pinc"
  end

  test do
    system "#{bin}/pinc", "--version"
  end
end