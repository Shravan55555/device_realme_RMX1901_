#!/bin/bash

# Colors
GREEN="\033[0;32m"
YELLOW="\033[1;33m"
END="\033[0m"

# Function to check if a directory exists
check_dir() {
    if [ -d "$1" ]; then
        echo -e "${YELLOW}• $1 already exists. Skipping cloning...${END}"
        return 1
    fi
    return 0
}

# Start
echo -e "${YELLOW}Applying patches and cloning device source...${END}"


# Clone Vendor Sources
if check_dir vendor/realme/RMX1901; then
    git clone --depth=1 -b 15 https://gitlab.com/shravansayz/vendor_realme_RMX1901_15.git vendor/realme/RMX1901
fi

# Clone Kernel Sources
    git clone --depth=1 -b testtt https://github.com/shravansayz/kernel_realme_sdm710.git kernel/realme/sdm710
    cd kernel/realme/sdm710
    curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -s v0.9.5
    cd ../../..

# Cloning Clang Source
    git clone --depth=1 -b master https://github.com/kdrag0n/proton-clang.git prebuilts/clang/host/linux-x86/clang-proton

# End
echo -e "${YELLOW}All patches have been successfully applied; your device sources are now ready!${END}"
