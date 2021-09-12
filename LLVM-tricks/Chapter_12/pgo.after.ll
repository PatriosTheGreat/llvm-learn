; ModuleID = 'pgo.cpp'
source_filename = "pgo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Hello %d\0A\00", align 1

; Function Attrs: inlinehint noinline nounwind uwtable
define dso_local void @_Z3fooi(i32 %0) local_unnamed_addr #0 !prof !29 {
  %2 = call i32 @rand() #4
  %3 = srem i32 %2, 10
  %4 = icmp sgt i32 %3, 5
  br i1 %4, label %5, label %8, !prof !30

5:                                                ; preds = %1
  %6 = mul nsw i32 %0, 3
  %7 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %6)
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @rand() local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readnone %1) local_unnamed_addr #3 !prof !31 {
  %3 = icmp sgt i32 %0, -10
  br i1 %3, label %5, label %4, !prof !32

4:                                                ; preds = %5, %2
  ret i32 0

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %7, %5 ], [ 0, %2 ]
  call void @_Z3fooi(i32 %6)
  %7 = add nuw nsw i32 %6, 1
  %8 = add nsw i32 %0, 9
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %5, label %4, !prof !32
}

attributes #0 = { inlinehint noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!28}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"ProfileSummary", !2}
!2 = !{!3, !4, !5, !6, !7, !8, !9, !10}
!3 = !{!"ProfileFormat", !"InstrProf"}
!4 = !{!"TotalCount", i64 35}
!5 = !{!"MaxCount", i64 14}
!6 = !{!"MaxInternalCount", i64 6}
!7 = !{!"MaxFunctionCount", i64 14}
!8 = !{!"NumCounts", i64 4}
!9 = !{!"NumFunctions", i64 2}
!10 = !{!"DetailedSummary", !11}
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27}
!12 = !{i32 10000, i64 0, i32 0}
!13 = !{i32 100000, i64 14, i32 2}
!14 = !{i32 200000, i64 14, i32 2}
!15 = !{i32 300000, i64 14, i32 2}
!16 = !{i32 400000, i64 14, i32 2}
!17 = !{i32 500000, i64 14, i32 2}
!18 = !{i32 600000, i64 14, i32 2}
!19 = !{i32 700000, i64 14, i32 2}
!20 = !{i32 800000, i64 14, i32 2}
!21 = !{i32 900000, i64 6, i32 3}
!22 = !{i32 950000, i64 6, i32 3}
!23 = !{i32 990000, i64 6, i32 3}
!24 = !{i32 999000, i64 6, i32 3}
!25 = !{i32 999900, i64 6, i32 3}
!26 = !{i32 999990, i64 6, i32 3}
!27 = !{i32 999999, i64 6, i32 3}
!28 = !{!"clang version 10.0.0-4ubuntu1 "}
!29 = !{!"function_entry_count", i64 14}
!30 = !{!"branch_weights", i32 6, i32 8}
!31 = !{!"function_entry_count", i64 1}
!32 = !{!"branch_weights", i32 14, i32 1}
