.class Lcom/meizu/widget/RecipientEdit$5;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/widget/RecipientEdit;


# direct methods
.method constructor <init>(Lcom/meizu/widget/RecipientEdit;)V
    .locals 0
    .parameter

    .prologue
    .line 1151
    iput-object p1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1154
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mEditView:Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v2}, Lcom/meizu/widget/RecipientEdit;->access$000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/meizu/widget/RecipientEdit;->removeSpecialCharacter(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/meizu/widget/RecipientEdit;->access$2100(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    .local v0, input:Ljava/lang/String;
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->isValidRecipient(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/meizu/widget/RecipientEdit;->access$2200(Lcom/meizu/widget/RecipientEdit;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1156
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$900(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1157
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mCheckSipDestAddr:Z
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$2300(Lcom/meizu/widget/RecipientEdit;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mSipDestChecker:Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$2400(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$SipDestChecker;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1300(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1158
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1100(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_CHECKING:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mCheckingRecipient:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$700(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1160
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientHandler:Lcom/meizu/widget/RecipientEdit$RecipientHandler;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1000(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientEdit$RecipientHandler;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1161
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #calls: Lcom/meizu/widget/RecipientEdit;->beginCheck()V
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$2500(Lcom/meizu/widget/RecipientEdit;)V

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientState:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1100(Lcom/meizu/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v1

    sget-object v2, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_UNCHECK:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1166
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1300(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mRecipientNotSip:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$1300(Lcom/meizu/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    #getter for: Lcom/meizu/widget/RecipientEdit;->mOnSipStateChangedListener:Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;
    invoke-static {v1}, Lcom/meizu/widget/RecipientEdit;->access$800(Lcom/meizu/widget/RecipientEdit;)Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/widget/RecipientEdit$5;->this$0:Lcom/meizu/widget/RecipientEdit;

    sget-object v3, Lcom/meizu/widget/RecipientStateInfo$SipState;->SIP_NO:Lcom/meizu/widget/RecipientStateInfo$SipState;

    invoke-interface {v1, v2, v3}, Lcom/meizu/widget/RecipientStateInfo$OnSipStateChangedListener;->onSipStateChanged(Landroid/view/View;Lcom/meizu/widget/RecipientStateInfo$SipState;)V

    goto :goto_0
.end method
