class SvanhallaCli < Formula
  desc "Svanhalla CLI reklamprogram"
  homepage "https://github.com/svanhalla/svanhalla-cli"
  url "https://github.com/svanhalla/svanhalla-cli/archive/v1.0.1.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/svanhalla-cli"
  end

  test do
    assert_match "svanhalla-cli v1.0.0", shell_output("#{bin}/svanhalla-cli version")
  end
end
