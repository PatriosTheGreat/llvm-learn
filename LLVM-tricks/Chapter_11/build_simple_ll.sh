../../../llvm-project/build_x64/bin/opt –load-pass-plugin="./build/SimpleMulOpt.so" –passes="simple-mul-opt"  –pass-remarks-output=remark.yaml -disable-output


