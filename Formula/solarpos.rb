# Generated with JReleaser 1.6.0 at 2023-06-16T13:58:09.31803228Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.3.4/solarpos-0.3.4.zip"
  version "0.3.4"
  sha256 "046f7e93fbce02ff359ba8a0607099d06b9ecfda7ca0ccdeec22ab93cbe2b728"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.3.4", output
  end
end
