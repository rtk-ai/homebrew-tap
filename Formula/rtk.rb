class Rtk < Formula                                                                                                                                                                        
  desc "Rust Token Killer - High-performance CLI proxy to minimize LLM token consumption"                                                                                                  
  homepage "https://github.com/rtk-ai/rtk"                                                                                                                                                 
  version "0.8.1"                                                                                                                                                                          
  license "MIT"                                                                                                                                                                            
                                                                                                                                                                                           
  if OS.mac? && Hardware::CPU.arm?                                                                                                                                                         
    url "https://github.com/rtk-ai/rtk/releases/download/v#{version}/rtk-aarch64-apple-darwin.tar.gz"                                                                                      
    sha256 "ccbcbe0fc578e5dd696d31c30887058c7a5e244cc723d3ee99c71a0b7b6ee99b"                                                                                                              
  elsif OS.mac? && Hardware::CPU.intel?                                                                                                                                                    
    url "https://github.com/rtk-ai/rtk/releases/download/v#{version}/rtk-x86_64-apple-darwin.tar.gz"                                                                                       
    sha256 "4f27f39fc93f568e6a3b1080342e558f499875ccbac044adbd8a54f9c737fe83"                                                                                                              
  elsif OS.linux? && Hardware::CPU.arm?                                                                                                                                                    
    url "https://github.com/rtk-ai/rtk/releases/download/v#{version}/rtk-aarch64-unknown-linux-gnu.tar.gz"                                                                                 
    sha256 "ef553a0bca5eb5e9a547a1c8d93549a50cb60981a1e4b057b2b1650fbae13eb2"                                                                                                              
  elsif OS.linux? && Hardware::CPU.intel?                                                                                                                                                  
    url "https://github.com/rtk-ai/rtk/releases/download/v#{version}/rtk-x86_64-unknown-linux-gnu.tar.gz"                                                                                  
    sha256 "f41de84b1ee6a4b28fdd7fef3919519322718fb8ca705b07af8ccf80ec368428"                                                                                                              
  end                                                                                                                                                                                      
                                                                                                                                                                                           
  def install                                                                                                                                                                              
    bin.install "rtk"                                                                                                                                                                      
  end                                                                                                                                                                                      
                                                                                                                                                                                           
  def caveats                                                                                                                                                                              
    <<~EOS                                                                                                                                                                                 
      🚀 rtk is installed! Get started:                                                                                                                                                    
                                                                                                                                                                                           
        # Initialize for Claude Code                                                                                                                                                       
        rtk init --global    # Add to ~/CLAUDE.md (all projects)                                                                                                                           
        rtk init             # Add to ./CLAUDE.md (this project)                                                                                                                           
                                                                                                                                                                                           
        # See all commands                                                                                                                                                                 
        rtk --help                                                                                                                                                                         
                                                                                                                                                                                           
        # Measure your token savings                                                                                                                                                       
        rtk gain                                                                                                                                                                           
                                                                                                                                                                                           
      📖 Full documentation: https://github.com/rtk-ai/rtk                                                                                                                                 
    EOS                                                                                                                                                                                    
  end                                                                                                                                                                                      
                                                                                                                                                                                           
  test do                                                                                                                                                                                  
    system "#{bin}/rtk", "--version"                                                                                                                                                       
  end                                                                                                                                                                                      
end                               
