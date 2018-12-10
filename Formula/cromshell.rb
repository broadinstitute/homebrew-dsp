class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.2.1.tar.gz"
  sha256 "2c6f4e15b2e7236739afeb66ebbbb577cdbd56c9b4f3cbd1cc872469a13fc82f"

  bottle :unneeded

  depends_on "jq"
  depends_on "cromwell" => [:optional]

  def install
    bin.install "cromshell"
  end

  test do
    system "#{bin}/cromshell", "--help"
  end
end
