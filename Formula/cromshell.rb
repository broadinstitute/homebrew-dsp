class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.1.0.tar.gz"
  version "0.1"
  sha256 "05b91283e023b3b89c83b9d3bccfc6cde0fb4f25f818dfcb8b11dd5bbc3899e5"

  bottle :unneeded

  depends_on "curl"
  depends_on "cromwell" => [:optional]
  depends_on "jq"

  def install
    bin.install "cromshell"
  end

  test do
    system "cromshell", "--help"
  end
end
