class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.3.11.tar.gz"
  sha256 "2ab4163950fec7236ac70d29e4167a589ec471f3c1b9c5c79472a1a8a13b0c96"

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
