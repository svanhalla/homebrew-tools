class SvanhallaCli < Formula
  desc "Svanhalla CLI reklamprogram"
  homepage "https://github.com/svanhalla/svanhalla-releases"
  version "1.1.0"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/svanhalla/svanhalla-releases/releases/download/svanhalla-cli-v1.1.0/svanhalla-cli-darwin-arm64"
      sha256 "20a4321e45aa5c9f52ddfc125c0a61f9f60b3e691a3165f08d711609981d8ce7"
    else
      url "https://github.com/svanhalla/svanhalla-releases/releases/download/svanhalla-cli-v1.1.0/svanhalla-cli-darwin-amd64"
      sha256 "9d8ad4db976561ad9b2b0a5d3708460204c660c4234aed3dbcc8665be1a9c9ca"
    end
  end

  on_linux do
    url "https://github.com/svanhalla/svanhalla-releases/releases/download/svanhalla-cli-v1.1.0/svanhalla-cli-linux-amd64"
    sha256 "b4b230ec7acef0e0ee30e587c3a154e40cbe273a766febee4dc1511c73a02a6f"
  end

  def install
    if OS.mac?
      bin.install "svanhalla-cli-darwin-#{Hardware::CPU.arch}" => "svanhalla-cli"
    else
      bin.install "svanhalla-cli-linux-amd64" => "svanhalla-cli"
    end
  end

  test do
    assert_match "svanhalla-cli v1.1.0", shell_output("#{bin}/svanhalla-cli version")
  end
end
