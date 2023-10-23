# Generated with JReleaser 1.8.0 at 2023-10-23T09:56:24.389006743Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.3.6/solarpos-0.3.6.zip"
  version "0.3.6"
  sha256 "def0efd1ad14b9509442f5271c1dd6dcb14f6016a53c36e6b831c3da0ab28058"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.3.6", output
  end
end
