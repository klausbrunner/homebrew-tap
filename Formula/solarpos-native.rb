# Generated with JReleaser 1.14.0 at 2024-09-28T19:17:48.359199151Z

class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.4.3/solarpos-0.4.3-osx-aarch_64.zip"
  version "0.4.3"
  sha256 "471cc709b501dcc1c3ee14a6d67911a74c6ca877be41da54bb2cd2499421b507"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.4.3", output
  end
end
