.class Lcom/meizu/server/FileProtectPasswordView$1;
.super Landroid/os/Handler;
.source "FileProtectPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/server/FileProtectPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FileProtectPasswordView;


# direct methods
.method constructor <init>(Lcom/meizu/server/FileProtectPasswordView;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/meizu/server/FileProtectPasswordView$1;->this$0:Lcom/meizu/server/FileProtectPasswordView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 52
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/meizu/server/FileProtectPasswordView$1;->this$0:Lcom/meizu/server/FileProtectPasswordView;

    invoke-virtual {v0}, Lcom/meizu/server/FileProtectPasswordView;->dismiss()V

    .line 55
    :cond_0
    return-void
.end method
