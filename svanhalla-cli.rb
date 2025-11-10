# typed: false
# frozen_string_literal: true

class SvanhallaCli < Formula
  desc "Svanhalla CLI reklamprogram"
  homepage "https://github.com/svanhalla/svanhalla-releases"
  url "https://github.com/svanhalla/svanhalla-releases/archive/v1.2.9.tar.gz"
  version "1.2.9"

  disable! date: "2025-11-10", because: "the cask should be used now instead", replacement_cask: "svanhalla-cli"
end
