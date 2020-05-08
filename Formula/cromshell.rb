class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.4.2.tar.gz"
  sha256 "07a08aca07e74e0547d8eb317cded2967349354c1bcb82e8a59791699b29a446"

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
