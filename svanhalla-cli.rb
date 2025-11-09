class SvanhallaCli < Formula
  desc "Svanhalla CLI reklamprogram"
  homepage "https://github.com/svanhalla/svanhalla-releases"
  version "1.0.9"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/svanhalla/svanhalla-releases/releases/download/svanhalla-cli-v1.0.9/svanhalla-cli-darwin-arm64"
      sha256 "8fe2b7e1bc7759c507fc12ca93819ada8800afcda782f0ec7a37efbcf5e3923b"
    else
      url "https://github.com/svanhalla/svanhalla-releases/releases/download/svanhalla-cli-v1.0.9/svanhalla-cli-darwin-amd64"
      sha256 "a2b09d95bfb1906b7d51c0a660510b970ce916526e7e9ac9ba233d1add295ef3"
    end
  end

  def install
    bin.install "svanhalla-cli-darwin-#{Hardware::CPU.arch}" => "svanhalla-cli"
  end

  test do
    assert_match "svanhalla-cli v1.0.9", shell_output("#{bin}/svanhalla-cli version")
  end
end
