.class Landroid/webkit/WebViewClassic$OptionActionModeCallback;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 811
    iput-object p1, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewClassic$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 811
    invoke-direct {p0, p1}, Landroid/webkit/WebViewClassic$OptionActionModeCallback;-><init>(Landroid/webkit/WebViewClassic;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 828
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 872
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOptionWindow:Lcom/meizu/widget/OptionPopupWindow;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2200(Landroid/webkit/WebViewClassic;)Lcom/meizu/widget/OptionPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 873
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mOptionWindow:Lcom/meizu/widget/OptionPopupWindow;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2200(Landroid/webkit/WebViewClassic;)Lcom/meizu/widget/OptionPopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 875
    :cond_1
    return v4

    .line 830
    :pswitch_0
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2000(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 831
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->copySelection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 832
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    .line 838
    :pswitch_1
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 839
    .local v1, selection:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 840
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    .line 841
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.browser"

    const-string v3, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 844
    const-string v2, "create_new_tab"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 845
    const-string/jumbo v2, "query"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 850
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #selection:Ljava/lang/String;
    :pswitch_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->cutSelection()V

    .line 851
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto :goto_0

    .line 854
    :pswitch_3
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mSelectAll:Z
    invoke-static {v2, v4}, Landroid/webkit/WebViewClassic;->access$2102(Landroid/webkit/WebViewClassic;Z)Z

    .line 855
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectAll()V

    goto/16 :goto_0

    .line 858
    :pswitch_4
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->copyAll()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 859
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 863
    :pswitch_5
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->pasteFromClipboard()V

    .line 864
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 867
    :pswitch_6
    iget-object v2, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectText()Z

    goto/16 :goto_0

    .line 828
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    const/4 v0, 0x0

    .line 815
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 816
    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 818
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 880
    iget-object v0, p0, Landroid/webkit/WebViewClassic$OptionActionModeCallback;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mOptionActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$2302(Landroid/webkit/WebViewClassic;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 881
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 823
    const/4 v0, 0x0

    return v0
.end method
