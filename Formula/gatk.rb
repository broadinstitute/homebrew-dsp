class Gatk < Formula
  desc "Official code repository for GATK versions 4 and up"
  homepage "https://software.broadinstitute.org/gatk"
  url "https://github.com/broadinstitute/gatk/releases/download/4.0.11.0/gatk-4.0.11.0.zip"
  sha256 "5ee23159be7c65051335ac155444c6a49c4d8e3515d4227646c0686819934536"

  bottle :unneeded

  depends_on :java => "1.8"

  resource "count_reads.bam" do
    url "https://github.com/broadinstitute/gatk/blob/626c88732c02b0fd5f395db20c91bf2784ec54b9/src/test/resources/org/broadinstitute/hellbender/tools/count_reads.bam?raw=true"
    sha256 "656e36331a39a3641565ef7810a529ac51270b4132007d7b94e6efff99133a2c"
  end

  def install
    prefix.install "gatk"
    prefix.install "gatk-package-#{version}-spark.jar"
    prefix.install "gatk-package-#{version}-local.jar"
    bash_completion.install "gatk-completion.sh"
    bin.install_symlink "#{prefix}/gatk"
  end

  def caveats; <<~EOS
    This brew installation does not include the necessary python dependencies to run certain gatk tools.
    Similarly, it does not install the necessary version of R and it's packages for certain plotting functions to work.

    See the GATK readme for detailed installation instructions.
       https://github.com/broadinstitute/gatk
    
    We recommend running the tools with complex python dependencies by using our docker instead of attempting to install them locally.
    Gatk dockers are availabe on docker hub:
       https://hub.docker.com/r/broadinstitute/gatk/tags/
  EOS
  end
  test do
    testpath.install resource("count_reads.bam")
    assert_equal "Tool returned:\n8", shell_output("#{bin}/gatk CountReads -I count_reads.bam --tmp-dir #{testpath}").strip
  end
end
