.class final Landroid/app/ContextImpl$43;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 574
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 576
    const-string v2, "access_control"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 577
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/pm/IAccessControlManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IAccessControlManager;

    move-result-object v1

    .line 578
    .local v1, service:Landroid/content/pm/IAccessControlManager;
    new-instance v2, Landroid/content/pm/AccessControlManager;

    invoke-direct {v2, p1, v1}, Landroid/content/pm/AccessControlManager;-><init>(Landroid/content/Context;Landroid/content/pm/IAccessControlManager;)V

    return-object v2
.end method
