# Written by the release workflow of KevenGoncalves/lig (packaging/homebrew); edits here are replaced.
class Lig < Formula
  desc "Fig-style IDE autocomplete for your terminal (zsh, bash and fish)"
  homepage "https://github.com/KevenGoncalves/lig"
  license "MIT"

  on_macos do
    depends_on arch: :arm64

    on_arm do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.1/lig-1.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "c04938996de7e7dcc92caa229d690a21e148ad17f3ce7c1768c8e1a3f3cbe3fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.1/lig-1.2.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c52dbc6e6c9b30632973c8f3a498cebb875f3d7210b318d9b6ee3eb8a09f3ae9"
    end
    on_arm do
      url "https://github.com/KevenGoncalves/lig/releases/download/v1.2.1/lig-1.2.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "69faca10917b7e35269af5dabc46b855ea951744cc2f1ad8af76da6a6110407f"
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
