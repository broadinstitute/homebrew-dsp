class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.5.1.tar.gz"
  sha256 "f66b7cb855e852861dab120efde78c766df73b9b1db34bec72fc5e022f6fc131"

  bottle :unneeded

  depends_on "coreutils"
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
