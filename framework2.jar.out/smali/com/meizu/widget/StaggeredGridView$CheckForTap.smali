.class final Lcom/meizu/widget/StaggeredGridView$CheckForTap;
.super Ljava/lang/Object;
.source "StaggeredGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/StaggeredGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/StaggeredGridView;


# direct methods
.method constructor <init>(Lcom/meizu/widget/StaggeredGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 3706
    iput-object p1, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    .line 3708
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v4}, Lcom/meizu/widget/StaggeredGridView;->access$400(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 3709
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v5, 0x4

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v5}, Lcom/meizu/widget/StaggeredGridView;->access$402(Lcom/meizu/widget/StaggeredGridView;I)I

    .line 3710
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v5}, Lcom/meizu/widget/StaggeredGridView;->access$4800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v5

    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mFirstPosition:I
    invoke-static {v6}, Lcom/meizu/widget/StaggeredGridView;->access$1200(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3711
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3713
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mDataChanged:Z
    invoke-static {v4}, Lcom/meizu/widget/StaggeredGridView;->access$500(Lcom/meizu/widget/StaggeredGridView;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3715
    invoke-virtual {v0, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3716
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setPressed(Z)V

    .line 3717
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/meizu/widget/StaggeredGridView;->layoutChildren(Z)V

    .line 3718
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mMotionPosition:I
    invoke-static {v5}, Lcom/meizu/widget/StaggeredGridView;->access$4800(Lcom/meizu/widget/StaggeredGridView;)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lcom/meizu/widget/StaggeredGridView;->positionSelector(ILandroid/view/View;)V

    .line 3719
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v4}, Landroid/view/View;->refreshDrawableState()V

    .line 3721
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 3722
    .local v3, longPressTimeout:I
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    invoke-virtual {v4}, Landroid/view/View;->isLongClickable()Z

    move-result v2

    .line 3724
    .local v2, longClickable:Z
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v4, v4, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 3725
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v4, v4, Lcom/meizu/widget/StaggeredGridView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3726
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v4, :cond_0

    .line 3727
    if-eqz v2, :cond_3

    .line 3728
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 3735
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 3736
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
    invoke-static {v4}, Lcom/meizu/widget/StaggeredGridView;->access$4900(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    if-nez v4, :cond_1

    .line 3737
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    new-instance v5, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    iget-object v6, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;-><init>(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$1;)V

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
    invoke-static {v4, v5}, Lcom/meizu/widget/StaggeredGridView;->access$4902(Lcom/meizu/widget/StaggeredGridView;Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;)Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    .line 3739
    :cond_1
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
    invoke-static {v4}, Lcom/meizu/widget/StaggeredGridView;->access$4900(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/widget/StaggeredGridView$WindowRunnnable;->rememberWindowAttachCount()V

    .line 3740
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    iget-object v5, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #getter for: Lcom/meizu/widget/StaggeredGridView;->mPendingCheckForLongPress:Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;
    invoke-static {v5}, Lcom/meizu/widget/StaggeredGridView;->access$4900(Lcom/meizu/widget/StaggeredGridView;)Lcom/meizu/widget/StaggeredGridView$CheckForLongPress;

    move-result-object v5

    int-to-long v6, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3749
    .end local v0           #child:Landroid/view/View;
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_2
    :goto_1
    return-void

    .line 3730
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #d:Landroid/graphics/drawable/Drawable;
    .restart local v2       #longClickable:Z
    .restart local v3       #longPressTimeout:I
    :cond_3
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 3742
    :cond_4
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v8}, Lcom/meizu/widget/StaggeredGridView;->access$402(Lcom/meizu/widget/StaggeredGridView;I)I

    goto :goto_1

    .line 3745
    .end local v2           #longClickable:Z
    .end local v3           #longPressTimeout:I
    :cond_5
    iget-object v4, p0, Lcom/meizu/widget/StaggeredGridView$CheckForTap;->this$0:Lcom/meizu/widget/StaggeredGridView;

    #setter for: Lcom/meizu/widget/StaggeredGridView;->mTouchMode:I
    invoke-static {v4, v8}, Lcom/meizu/widget/StaggeredGridView;->access$402(Lcom/meizu/widget/StaggeredGridView;I)I

    goto :goto_1
.end method
