class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.2.3.tar.gz"
  sha256 "04b0eb255441002e76dc51bc8bc17d705eff656a86fdabdc9e81b7f09107fe77"

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
