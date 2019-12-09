class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.4.0.tar.gz"
  sha256 "23747803dd21850bc879427f7a17fec29c42f8baf69fcbae51357b3030b2bf47"

  bottle :unneeded

  depends_on "jq"
  depends_on "cromwell" => [:optional]

  def install
    bin.install "cromshell"
    zsh_completion.install "completions/_cromshell" => "_cromshell"
  end

  test do
    system "#{bin}/cromshell", "--help"
  end
end
