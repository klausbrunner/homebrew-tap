# Generated with JReleaser 1.8.0 at 2023-10-24T07:03:12.036826893Z
class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.4.0/solarpos-0.4.0.zip"
  version "0.4.0"
  sha256 "3056ef56ca5524a078e24a59091bfa18653fdaf0d0d25460bd0fe22161399e59"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.4.0", output
  end
end
