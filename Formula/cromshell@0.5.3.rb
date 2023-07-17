class CromshellAT053 < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.5.3.tar.gz"
  sha256 "64b9d422330b4bb4759faf0193c740cb35edd508e1180e2def352309e3e29e01"

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
