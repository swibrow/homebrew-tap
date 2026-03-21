class AgentOps < Formula
  desc "TUI for monitoring and resuming Claude Code agent sessions in tmux"
  homepage "https://github.com/swibrow/agent-ops"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.4.0/agent-ops_0.4.0_x86_64-apple-darwin.tar.gz"
      sha256 "0dbf8a2599247905cf3c7a3a53b45bf6617861a846a8643053a921f04e3e8567"
    end
    on_arm do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.4.0/agent-ops_0.4.0_aarch64-apple-darwin.tar.gz"
      sha256 "7b4e18c9ff626fe7fc211c409859be001029dfcc1ee08a2273bc5f89fdf80734"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.4.0/agent-ops_0.4.0_x86_64-unknown-linux-gnu.tar.gz"
      sha256 "218df7813152d22843ad9edbebc1534f0e6e54b3c4c3b75291ea412052b41f56"
    end
    on_arm do
      url "https://github.com/swibrow/agent-ops/releases/download/v0.4.0/agent-ops_0.4.0_aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e046e911082f3ba3d149ca4c254e5889aa1850e271adac9e5fe8f95335ecffd7"
    end
  end

  def install
    bin.install "agent-ops"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agent-ops --version", 2)
  end
end
