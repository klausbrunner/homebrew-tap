# Generated with JReleaser 1.19.0 at 2025-08-26T06:30:55.152143129Z

class Solarpos < Formula
  desc "A simple command-line application to calculate topocentric solar coordinates and sunrise/sunset
        times."
  homepage "https://github.com/klausbrunner/solarpos"
  url "https://github.com/klausbrunner/solarpos/releases/download/v0.7.0/solarpos-0.7.0.zip"
  version "0.7.0"
  sha256 "1c8679852314763f941a73eb8f6daa10629bd64a4c120d861e9ca74661deef17"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/solarpos" => "solarpos"
  end

  test do
    output = shell_output("#{bin}/solarpos --version")
    assert_match "0.7.0", output
  end
end
