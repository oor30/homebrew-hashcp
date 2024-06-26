class Hashcp < Formula
  include Language::Python::Virtualenv
  desc "copy files in directory, and rename the files hash value."
  homepage "https://github.com/oor30/homebrew-hashcp"
  url "https://github.com/oor30/hashFilename/releases/download/1.0/hashcp-0.1.0.tar.gz"
  sha256 "f18f9eb7e8a4a90281811f7b292ce3959b772af1219ea7e975e16e908a387244"
  license ""

  depends_on "python@3.12"
  
  resource "natsort" do
    url "https://files.pythonhosted.org/packages/e2/a9/a0c57aee75f77794adaf35322f8b6404cbd0f89ad45c87197a937764b7d0/natsort-8.4.0.tar.gz"
    sha256 "45312c4a0e5507593da193dedd04abb1469253b601ecaf63445ad80f0a1ea581"
  end

  def install
    virtualenv_install_with_resources
    bin.install 'hashcp.py' => 'hashcp'
  end
end
