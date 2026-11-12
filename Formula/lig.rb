# Written by the release workflow of KevenGoncalves/lig (packaging/homebrew); edits here are replaced.
class Lig < Formula
  desc "Fig-style IDE autocomplete for your terminal (zsh, bash and fish)"
  homepage "https://github.com/KevenGoncalves/lig"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.2/lig-1.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "05815ddb4297770bf2fa133c9dc6b8bb6ad612b08100db4ee950905baf05a360"
    end
    on_arm do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.2/lig-1.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "1b783096659096f9022523ae8cf6268d3a44a1289866438952d02f8c2a200f5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.2/lig-1.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1bb57fb91dfa3d2db48e2cbcc70c3eec84d62ed015311b1b82a76f8d846ff897"
    end
    on_arm do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.2/lig-1.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0899411a524ac3a25d7e0eccd1f7cfcc3d0f924da38402df592f40257b518f49"
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
