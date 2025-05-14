# Rebuild fuzzers with coverage instrumentation
sudo python3 infra/helper.py build_fuzzers --sanitizer coverage libpng

# Generate coverage report
sudo python3 infra/helper.py coverage libpng --corpus-dir build/out/corpus/ --fuzz-target libpng_read_fuzzer