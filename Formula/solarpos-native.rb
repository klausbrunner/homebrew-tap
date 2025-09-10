# Generated with JReleaser 1.20.0 at 2025-09-10T20:01:17.311827158Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.10/solarpos-0.7.10-osx-aarch_64.zip"
  version "0.7.10"
  sha256 "330b730bc238f9becb3992ebbc127585305bc6c267e6e383fad4cbc51c94a08c"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.10", output
  end
end
