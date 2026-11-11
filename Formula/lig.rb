# Written by the release workflow of KevenGoncalves/lig (packaging/homebrew); edits here are replaced.
class Lig < Formula
  desc "Fig-style IDE autocomplete for your terminal (zsh, bash and fish)"
  homepage "https://github.com/KevenGoncalves/lig"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.0/lig-1.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "674e6d4bb5ffa8f35cde2a029a8dba55195343042f69d533a151d8122eda93d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.0/lig-1.2.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d608b0486aa6c182b30e8819b64c5a64fef966d743b21af88615033ad21f7121"
    end
    on_arm do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.0/lig-1.2.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ff8d2f4c9a3f66406841f4c23f9880d6445aa5f1d4c5e91338da7224c854f17"
    end
  end

  def install
    bin.install "lig"
  end

  def caveats
    <<~EOS
      Run `lig install` to turn on the popup in your shell (zsh, bash or fish).
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lig --version")
  end
end
