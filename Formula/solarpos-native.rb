# Generated with JReleaser 1.9.0 at 2023-12-31T09:12:59.471894949Z
class SolarposNative < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.4.1/solarpos-0.4.1-osx-x86_64.zip"
  version "0.4.1"
  sha256 "67b393404b99d6fa47472c72c7bc5f81c321d274d773afce1aa1942b7565533f"
  license "MIT"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.4.1", output
  end
end
