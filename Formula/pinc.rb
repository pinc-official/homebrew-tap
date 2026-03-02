class Pinc < Formula
  desc "Component based CMS with git like principles"
  homepage "https://github.com/pinc-official/pinc-playground"
  license "MIT"

  url "https://github.com/pinc-official/pinc-playground/archive/refs/tags/0.0.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  bottle do
    root_url "https://github.com/pinc-official/homebrew-tap/releases/download/0.0.1"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "771ac1d9e910fb51757e7a9ba1947e82d3864b84b5ac6ed43657564543496c52"
  end

  depends_on "vips"

  def install
    bin.install "bin/pinc"
  end

  test do
    system "#{bin}/pinc", "--version"
  end
end