class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.4"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.4/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "92f67025dadd47bd28be4caed65d53eed4c57189355727063141797ff547c92f"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.4/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "5cecde59922fb4e2cbc25e9a152d91183aa0b61f854f0d047f4d14d757e38f7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.4/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "03a5693db4b9b667e86f161f92d16857af44ba3648f943d7da8df95787ba2eb9"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.4/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8e66f23ddc11a2a89e59b070e2261f963d81f5fa07348ab23337073d2cb5689d"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match "Format PostgreSQL SQL", shell_output("#{bin}/pgfmt --help")
  end
end
