class Cromshell < Formula
  desc "Shell commands to interact with a Cromwell server"
  homepage "https://github.com/broadinstitute/cromshell"
  url "https://github.com/broadinstitute/cromshell/archive/0.4.1.tar.gz"
  sha256 "cb9aa2065e9c56dee6612caea5f9d19247a13c9103a8a359c7cac40329e14415"

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
