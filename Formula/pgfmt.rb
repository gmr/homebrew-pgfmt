class Pgfmt < Formula
  desc "A PostgreSQL SQL formatter"
  homepage "https://github.com/gmr/pgfmt"
  version "2.1.0"
  license "BSD-3-Clause"

  on_macos do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.0/pgfmt-aarch64-apple-darwin.tar.gz"
      sha256 "ce1fd39ffddc8e2fb93eb65eea894a5c854e7cda34d17a3952b493e54870ecf6"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.0/pgfmt-x86_64-apple-darwin.tar.gz"
      sha256 "7e4107f888b9bb00180ab1b107000106e673dc20decd5ba232ad59b85ebd3070"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.0/pgfmt-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b2352f06f5009e275bb8c77137819e1eb29fad088038c7d18a78b1ac2417273"
    end
    on_intel do
      url "https://github.com/gmr/pgfmt/releases/download/v2.1.0/pgfmt-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4be230291177cd964820e32de982a3140d36b0500c7e9e787070468d304efdbb"
    end
  end

  def install
    bin.install "pgfmt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pgfmt --version")
  end
end
