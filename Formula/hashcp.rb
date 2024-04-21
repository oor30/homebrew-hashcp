# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Hashcp < Formula
  include Language::Python::Virtualenv
  desc ""
  homepage ""
  url "https://github.com/oor30/hashFilename/releases/download/1.0/hashcp-v1.0.tar.gz"
  sha256 "1a26875b47a35ce3cf95d68c994e0130a7305ba2d09a30159198b8e86f3f05a2"
  license ""

  # depends_on "cmake" => :build
  depends_on "python@3.12"

  def install
    # bin.install 'hashcp'
    virtualenv_install_with_resources
  end
end
