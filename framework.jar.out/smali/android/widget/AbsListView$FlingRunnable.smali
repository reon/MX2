.class Landroid/widget/AbsListView$FlingRunnable;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# static fields
.field private static final FLYWHEEL_TIMEOUT:I = 0x28


# instance fields
.field private final mCheckFlywheel:Ljava/lang/Runnable;

.field private mLastFlingY:I

.field private mLastOverFlingY:I

.field private final mScroller:Landroid/widget/OverScroller;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 4526
    iput-object p1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4498
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 4500
    new-instance v0, Landroid/widget/AbsListView$FlingRunnable$1;

    invoke-direct {v0, p0}, Landroid/widget/AbsListView$FlingRunnable$1;-><init>(Landroid/widget/AbsListView$FlingRunnable;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    .line 4527
    new-instance v0, Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4528
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0, v2, v2}, Landroid/widget/OverScroller;->setEnableMZOverScroll(ZZ)V

    .line 4529
    return-void
.end method

.method static synthetic access$1600(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4487
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method


# virtual methods
.method edgeReached(I)V
    .locals 5
    .parameter "delta"

    .prologue
    const/4 v4, 0x0

    .line 4582
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1, v4, v4, v4}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V

    .line 4583
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v3, v3, Landroid/widget/AbsListView;->mOverflingDistance:I

    invoke-virtual {v1, v2, v4, v3}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V

    .line 4584
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    .line 4585
    .local v0, overscrollMode:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->contentFits()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4587
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x6

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4588
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 4601
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4602
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4603
    return-void

    .line 4596
    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4597
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    if-eqz v1, :cond_1

    .line 4598
    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mPositionScroller:Landroid/widget/AbsListView$PositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    goto :goto_0
.end method

.method endFling()V
    .locals 2

    .prologue
    .line 4615
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4617
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4618
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4620
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 4621
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->clearScrollingCache()V
    invoke-static {v0}, Landroid/widget/AbsListView;->access$2000(Landroid/widget/AbsListView;)V

    .line 4622
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 4624
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4625
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    .line 4626
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1902(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4628
    :cond_0
    return-void
.end method

.method flywheelTouch()V
    .locals 4

    .prologue
    .line 4631
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/AbsListView$FlingRunnable;->mCheckFlywheel:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4632
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 4635
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v15, v15, Landroid/widget/AbsListView;->mTouchMode:I

    packed-switch v15, :pswitch_data_0

    .line 4637
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    .line 4781
    :cond_0
    :goto_0
    return-void

    .line 4641
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v15}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v15

    if-nez v15, :cond_0

    .line 4646
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v15, v15, Landroid/widget/AbsListView;->mIsAttached:Z

    if-eqz v15, :cond_0

    .line 4650
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget-boolean v15, v15, Landroid/widget/AdapterView;->mDataChanged:Z

    if-eqz v15, :cond_1

    .line 4651
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->layoutChildren()V

    .line 4654
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v15, v15, Landroid/widget/AdapterView;->mItemCount:I

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-nez v15, :cond_3

    .line 4655
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto :goto_0

    .line 4659
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4660
    .local v13, scroller:Landroid/widget/OverScroller;
    invoke-virtual {v13}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v8

    .line 4661
    .local v8, more:Z
    invoke-virtual {v13}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v14

    .line 4665
    .local v14, y:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    sub-int v4, v15, v14

    .line 4668
    .local v4, delta:I
    if-lez v4, :cond_5

    .line 4670
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4671
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4672
    .local v6, firstView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4675
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static/range {v16 .. v16}, Landroid/widget/AbsListView;->access$2100(Landroid/widget/AbsListView;)I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static/range {v16 .. v16}, Landroid/widget/AbsListView;->access$2200(Landroid/widget/AbsListView;)I

    move-result v16

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 4689
    .end local v6           #firstView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AbsListView;->mMotionPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4690
    .local v9, motionView:Landroid/view/View;
    const/4 v11, 0x0

    .line 4691
    .local v11, oldTop:I
    if-eqz v9, :cond_4

    .line 4692
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    .line 4696
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15, v4, v4}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    move-result v1

    .line 4697
    .local v1, atEdge:Z
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    const/4 v2, 0x1

    .line 4698
    .local v2, atEnd:Z
    :goto_2
    if-eqz v2, :cond_8

    .line 4708
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->canOverScroll()Z

    move-result v15

    if-nez v15, :cond_7

    .line 4709
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4678
    .end local v1           #atEdge:Z
    .end local v2           #atEnd:Z
    .end local v9           #motionView:Landroid/view/View;
    .end local v11           #oldTop:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    add-int/lit8 v10, v15, -0x1

    .line 4679
    .local v10, offsetToLast:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/AdapterView;->mFirstPosition:I

    move/from16 v16, v0

    add-int v16, v16, v10

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/AbsListView;->mMotionPosition:I

    .line 4681
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4682
    .local v7, lastView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v16

    move/from16 v0, v16

    iput v0, v15, Landroid/widget/AbsListView;->mMotionViewOriginalTop:I

    .line 4685
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    #getter for: Landroid/view/View;->mPaddingBottom:I
    invoke-static/range {v16 .. v16}, Landroid/widget/AbsListView;->access$2300(Landroid/widget/AbsListView;)I

    move-result v16

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    #getter for: Landroid/view/View;->mPaddingTop:I
    invoke-static/range {v16 .. v16}, Landroid/widget/AbsListView;->access$2400(Landroid/widget/AbsListView;)I

    move-result v16

    sub-int v15, v15, v16

    add-int/lit8 v15, v15, -0x1

    neg-int v15, v15

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto/16 :goto_1

    .line 4697
    .end local v7           #lastView:Landroid/view/View;
    .end local v10           #offsetToLast:I
    .restart local v1       #atEdge:Z
    .restart local v9       #motionView:Landroid/view/View;
    .restart local v11       #oldTop:I
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 4712
    .restart local v2       #atEnd:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v15, v15, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 4713
    if-eqz v8, :cond_0

    .line 4714
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/AbsListView$FlingRunnable;->edgeReached(I)V

    goto/16 :goto_0

    .line 4720
    :cond_8
    if-eqz v8, :cond_a

    if-nez v2, :cond_a

    .line 4721
    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    .line 4722
    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4723
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4725
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4743
    .end local v1           #atEdge:Z
    .end local v2           #atEnd:Z
    .end local v4           #delta:I
    .end local v8           #more:Z
    .end local v9           #motionView:Landroid/view/View;
    .end local v11           #oldTop:I
    .end local v13           #scroller:Landroid/widget/OverScroller;
    .end local v14           #y:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    .line 4744
    .restart local v13       #scroller:Landroid/widget/OverScroller;
    invoke-virtual {v13}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 4767
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v15}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)I

    move-result v12

    .line 4768
    .local v12, scrollY:I
    invoke-virtual {v13}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    .line 4769
    .local v3, currY:I
    invoke-virtual {v13}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    move/from16 v16, v0

    sub-int v5, v15, v16

    .line 4770
    .local v5, deltaY:I
    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 4771
    if-eqz v5, :cond_b

    .line 4772
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    neg-int v0, v5

    move/from16 v16, v0

    neg-int v0, v5

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Landroid/widget/AbsListView;->trackMotionScroll(II)Z

    .line 4773
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/view/View;->invalidate()V

    .line 4774
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4776
    .end local v3           #currY:I
    .end local v5           #deltaY:I
    .end local v12           #scrollY:I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AbsListView$FlingRunnable;->endFling()V

    goto/16 :goto_0

    .line 4635
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method start(I)V
    .locals 9
    .parameter "initialVelocity"

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x0

    .line 4532
    if-gez p1, :cond_1

    move v2, v6

    .line 4533
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4534
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4535
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    .line 4537
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4538
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4547
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$1900(Landroid/widget/AbsListView;)Landroid/os/StrictMode$Span;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4548
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const-string v1, "AbsListView-fling"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    #setter for: Landroid/widget/AbsListView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;
    invoke-static {v0, v1}, Landroid/widget/AbsListView;->access$1902(Landroid/widget/AbsListView;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    .line 4550
    :cond_0
    return-void

    .end local v2           #initialY:I
    :cond_1
    move v2, v1

    .line 4532
    goto :goto_0
.end method

.method startOverfling(I)V
    .locals 11
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x0

    .line 4573
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    const/high16 v7, -0x8000

    const v8, 0x7fffffff

    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v10

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v9, v1

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 4575
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4576
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4577
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4578
    return-void
.end method

.method startScroll(IIZ)V
    .locals 6
    .parameter "distance"
    .parameter "duration"
    .parameter "linear"

    .prologue
    const/4 v1, 0x0

    .line 4606
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 4607
    .local v2, initialY:I
    :goto_0
    iput v2, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastFlingY:I

    .line 4608
    iget-object v3, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    if-eqz p3, :cond_1

    sget-object v0, Landroid/widget/AbsListView;->sLinearInterpolator:Landroid/view/animation/Interpolator;

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/OverScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 4609
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    move v3, v1

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 4610
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x4

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4611
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4612
    return-void

    .end local v2           #initialY:I
    :cond_0
    move v2, v1

    .line 4606
    goto :goto_0

    .line 4608
    .restart local v2       #initialY:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method startSpringback()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 4557
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;

    iget-object v2, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v2, v2, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4558
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x6

    iput v1, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4559
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    iget v0, v0, Landroid/widget/AbsListView;->mCurrentOverScrollDistance:I

    iput v0, p0, Landroid/widget/AbsListView$FlingRunnable;->mLastOverFlingY:I

    .line 4560
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 4561
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 4566
    :goto_0
    return-void

    .line 4563
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    const/4 v2, -0x1

    iput v2, v0, Landroid/widget/AbsListView;->mTouchMode:I

    .line 4564
    iget-object v0, p0, Landroid/widget/AbsListView$FlingRunnable;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto :goto_0
.end method
