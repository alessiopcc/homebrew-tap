class Glidesh < Formula
  desc "Fast, stateless, SSH-only infrastructure automation"
  homepage "https://glidesh.netlify.app"
  version "2.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.1.1/glidesh-v2.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "a25861fcad08bdfd65100b371b3791c8675ebe884701204aeed1f7c72eb061ee"
    end
    on_intel do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.1.1/glidesh-v2.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "19b934fcdb46a8f96f750d711df744fd042cab2c7671ffb89032af68417834ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.1.1/glidesh-v2.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90c3fa400155b32bbdc90704343ba3c5bca5a448c29f7dacf796a47a74c33819"
    end
    on_intel do
      url "https://github.com/alessiopcc/glidesh/releases/download/v2.1.1/glidesh-v2.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "863267d7918cc7cde9e94136447cb1c72a95a1ad49f768d60809b020f8475fe1"
    end
  end

  def install
    bin.install "glidesh"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/glidesh --version")
  end
end
