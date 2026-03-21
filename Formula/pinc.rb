class Pinc < Formula
  desc "Component based CMS with git like principles"
  homepage "https://github.com/pinc-official/pinc-playground"
  license "MIT"

  bottle do
    root_url "https://github.com/pinc-official/homebrew-tap/releases/download/0.0.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e77861fd14ab39f995d8d274bcb60166d7fec73ddbed522415b6e5471df29120"
  end

  depends_on "vips"

  def install
    bin.install "bin/pinc"
  end

  test do
    system "#{bin}/pinc", "--version"
  end
end