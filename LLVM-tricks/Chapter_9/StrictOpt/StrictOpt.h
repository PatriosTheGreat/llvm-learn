#include "llvm/IR/PassManager.h"
struct StrictOpt : public PassInfoMixin<StrictOpt> {
  PreservedAnalyses run(Function &F,
                        FunctionAnalysisManager &FAM);
};