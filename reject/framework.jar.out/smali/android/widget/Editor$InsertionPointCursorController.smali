.class Landroid/widget/Editor$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;
.implements Landroid/widget/Editor$TextViewPositionListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 3924
    iput-object p1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3924
    invoke-direct {p0, p1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private getMagnifier()Lcom/meizu/widget/MagnifierPopupWindow;
    .locals 2

    .prologue
    .line 3976
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-nez v0, :cond_0

    .line 3977
    new-instance v0, Lcom/meizu/widget/MagnifierPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    .line 3979
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/widget/MagnifierPopupWindow;->setLimitInView(Z)V

    .line 3980
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 3983
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
<<<<<<< VENDOR #Conflict 0
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;
======= #Conflict 0
    invoke-static {}, Landroid/widget/Editor$BaiduEditorInjector;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mHandle:Landroid/widget/Editor$InsertionHandleView;
>>>>>>> BOSP #Conflict 0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Lcom/meizu/widget/MagnifierPopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 3963
    .line 3929
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-eqz v0, :cond_0

    .line 3930
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 3932
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 2

    .prologue
    .line 3988
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3989
    .local v0, observer:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3991
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    if-eqz v1, :cond_0

    .line 3992
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->mMagnifier:Lcom/meizu/widget/MagnifierPopupWindow;

    invoke-virtual {v1}, Lcom/meizu/widget/MagnifierPopupWindow;->dismiss()V

    .line 3993
    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 4014
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4015
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 3996
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4003
    :cond_0
    :goto_0
    return v0

    .line 3999
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4000
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$InsertionPointCursorController;->update(FF)V

    .line 4001
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .parameter "isInTouchMode"

    .prologue
    .line 3970
    if-nez p1, :cond_0

    .line 3971
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 3973
    :cond_0
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 3958
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget v0, v0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    iget v1, v1, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$InsertionPointCursorController;->update(FF)V

    .line 3959
    iget-object v0, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    #setter for: Landroid/widget/Editor;->mLastScrollTime:J
    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$2502(Landroid/widget/Editor;J)J

    .line 3960
    return-void
.end method

.method public update(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3936
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 3939
    .local v0, offset:I
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->isOffsetOutOfVisible(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mLastScrollTime:J
    invoke-static {v3}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 3955
    :goto_0
    return-void

    .line 3944
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    #setter for: Landroid/widget/Editor;->mLastScrollTime:J
    invoke-static {v1, v2, v3}, Landroid/widget/Editor;->access$2502(Landroid/widget/Editor;J)J

    .line 3946
    if-ltz v0, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3948
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3951
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$InsertionPointCursorController;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3952
    iget-object v1, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1100(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3954
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$InsertionPointCursorController;->getMagnifier()Lcom/meizu/widget/MagnifierPopupWindow;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/Editor$InsertionPointCursorController;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x3f8ccccd

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/meizu/widget/MagnifierPopupWindow;->showMagnifier(Landroid/view/View;FFF)V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 0
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 4011
    return-void
.end method
