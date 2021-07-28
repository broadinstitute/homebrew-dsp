class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.5.0.tar.gz"
  sha256 "0c4eeeab14524ce847132e714e59d95dd60c4e1a1aaaba3d6ff8df5999f261b1"

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
