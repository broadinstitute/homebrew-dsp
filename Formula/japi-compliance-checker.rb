class JapiComplianceChecker < Formula
  desc "Check backwards compatibility of a Java library"
  homepage "https://lvc.github.io/japi-compliance-checker/"
  url "https://github.com/lvc/japi-compliance-checker/archive/2.4.tar.gz"
  sha256 "0fd8ff8539a6f4a2c30379999befc1f9003fbb513f778b018a722360ab8c2229"

  depends_on "openjdk@8"
  depends_on "perl"

  def install
    system "perl", "Makefile.pl", "-install", "-prefix", prefix
    File.delete "#{bin}/japi-compliance-checker.cmd"
  end

  test do
    assert_match "Java API Compliance Checker (JAPICC)", shell_output("#{bin}/japi-compliance-checker --version")
  end
end
