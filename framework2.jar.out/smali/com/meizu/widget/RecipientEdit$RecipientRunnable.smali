.class final Lcom/meizu/widget/RecipientEdit$RecipientRunnable;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientRunnable"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mPhoneOrEmail:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "phoneOrEmail"
    .parameter "name"

    .prologue
    .line 4036
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4037
    iput-object p2, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    .line 4038
    iput-object p3, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    .line 4039
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 4043
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4044
    .local v0, index:I
    const/4 v4, -0x1

    if-le v0, v4, :cond_1

    .line 4045
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$5700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4047
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    .line 4048
    .local v3, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4049
    iget-object v3, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    .line 4053
    :cond_0
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$5800(Lcom/meizu/widget/RecipientEdit;)Landroid/widget/AbsoluteLayout;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/widget/RecipientEdit$ItemView;

    .line 4054
    .local v1, item:Lcom/meizu/widget/RecipientEdit$ItemView;
    invoke-virtual {v1, v3}, Lcom/meizu/widget/RecipientEdit$ItemView;->setText(Ljava/lang/CharSequence;)V

    .line 4055
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v5, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v5

    #calls: Lcom/meizu/widget/RecipientEdit;->refreshLayout(Z)V
    invoke-static {v4, v5}, Lcom/meizu/widget/RecipientEdit;->access$1900(Lcom/meizu/widget/RecipientEdit;Z)V

    .line 4058
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mIsSaveHistory:Z
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$4900(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4059
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$5900(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4060
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    aput-object v6, v4, v5

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4061
    iget-object v4, p0, Lcom/meizu/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mHistoryHandler:Lcom/meizu/widget/RecipientEdit$HistoryHandler;
    invoke-static {v4}, Lcom/meizu/widget/RecipientEdit;->access$5900(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$HistoryHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4064
    .end local v1           #item:Lcom/meizu/widget/RecipientEdit$ItemView;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #text:Ljava/lang/String;
    :cond_1
    return-void
.end method
