class SvanhallaCli < Formula
  desc "Svanhalla CLI reklamprogram"
  homepage "https://github.com/svanhalla/svanhalla-cli"
  head "https://github.com/svanhalla/svanhalla-cli.git", branch: "main"
  license "MIT"

  depends_on "go" => :build

  def install
    system "make", "build"
    bin.install "bin/svanhalla-cli"
  end

  test do
    assert_match "svanhalla-cli", shell_output("#{bin}/svanhalla-cli version")
  end
end
