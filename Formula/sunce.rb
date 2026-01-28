class Sunce < Formula
  desc "High-performance command-line solar position calculator"
  homepage "https://github.com/klausbrunner/sunce"
  version "0.3.7"
  if OS.mac? && Hardware::CPU.arm?
      url "https://github.com/klausbrunner/sunce/releases/download/v0.3.7/sunce-aarch64-apple-darwin.tar.zst"
      sha256 "262144eed4b241dc0713bc95a5d30756447ef03558b393911a9f15550ebc35fb"
  end
  if OS.linux? && Hardware::CPU.intel?
      url "https://github.com/klausbrunner/sunce/releases/download/v0.3.7/sunce-x86_64-unknown-linux-gnu.tar.zst"
      sha256 "c264a916e088f71712db8609f9ee39f46097379c1206eef485fce7f820fcd2f9"
  end
  license "MIT"

  BINARY_ALIASES = {
    "aarch64-apple-darwin":     {},
    "x86_64-pc-windows-gnu":    {},
    "x86_64-unknown-linux-gnu": {},
  }.freeze

  def target_triple
    cpu = Hardware::CPU.arm? ? "aarch64" : "x86_64"
    os = OS.mac? ? "apple-darwin" : "unknown-linux-gnu"

    "#{cpu}-#{os}"
  end

  def install_binary_aliases!
    BINARY_ALIASES[target_triple.to_sym].each do |source, dests|
      dests.each do |dest|
        bin.install_symlink bin/source.to_s => dest
      end
    end
  end

  def install
    bin.install "sunce" if OS.mac? && Hardware::CPU.arm?
    bin.install "sunce" if OS.linux? && Hardware::CPU.intel?

    install_binary_aliases!

    # Homebrew will automatically install these, so we don't need to do that
    doc_files = Dir["README.*", "readme.*", "LICENSE", "LICENSE.*", "CHANGELOG.*"]
    leftover_contents = Dir["*"] - doc_files

    # Install any leftover files in pkgshare; these are probably config or
    # sample files.
    pkgshare.install(*leftover_contents) unless leftover_contents.empty?
  end
end
