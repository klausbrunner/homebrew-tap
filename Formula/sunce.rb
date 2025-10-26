class Sunce < Formula
  desc "High-performance command-line solar position calculator"
  homepage "https://github.com/klausbrunner/sunce"
  version "0.3.4"
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/klausbrunner/sunce/releases/download/v0.3.4/sunce-aarch64-apple-darwin.tar.zst"
    sha256 "1501a4cebfc103f012f2071d6b61ce5990e30c37f7b62cecaae390e4eb67488e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/klausbrunner/sunce/releases/download/v0.3.4/sunce-x86_64-unknown-linux-gnu.tar.zst"
    sha256 "c96b06a4d82ea449495f1781cb2d0df573ff75863e350757e4afab23c4a2bcdd"
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
