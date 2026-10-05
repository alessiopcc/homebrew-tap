class Glidesh < Formula
  desc "Fast, stateless, SSH-only infrastructure automation"
  homepage "https://glidesh.netlify.app"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alessiopcc/glidesh/releases/download/v1.2.0/glidesh-v1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "687d432c6034cc76dea98e0eafc3d98933d0e637c393371708b3aa5bc3c225c9"
    end
    on_intel do
      url "https://github.com/alessiopcc/glidesh/releases/download/v1.2.0/glidesh-v1.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "981181c371cf062ebc0316e2ecb03d7856ffe20352e16d17bbffd9612380c7c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alessiopcc/glidesh/releases/download/v1.2.0/glidesh-v1.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "714ba701532abeb6061ac12f0b4b2d1d87bb0cdc419153f895173a65dae1f437"
    end
    on_intel do
      url "https://github.com/alessiopcc/glidesh/releases/download/v1.2.0/glidesh-v1.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a2f5e9115329419f4f3c127d14bbac8bc86d26324784fcdd221dca00d7ed24d8"
    end
  end

  def install
    bin.install "glidesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glidesh --version")
  end
end
