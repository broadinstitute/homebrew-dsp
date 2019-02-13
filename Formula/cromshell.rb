class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.3.0.tar.gz"
  sha256 "87caca460ceeeb8ff1288b04a41343552a88922b8fe7e8cf9e9d89bf7857dc53"

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
