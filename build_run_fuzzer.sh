set -e  # Exit on error

# Build the Docker image
sudo python3 infra/helper.py build_image libpng

# Build the fuzzers
sudo python3 infra/helper.py build_fuzzers libpng

# Clean and recreate the corpus directory
sudo rm -rf build/out/corpus/
sudo mkdir -p build/out/corpus

# Run the fuzzer
sudo python3 infra/helper.py run_fuzzer libpng libpng_read_fuzzer --corpus-dir build/out/corpus