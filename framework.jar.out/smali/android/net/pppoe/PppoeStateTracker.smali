.class public Landroid/net/pppoe/PppoeStateTracker;
.super Landroid/os/Handler;
.source "PppoeStateTracker.java"

# interfaces
.implements Landroid/net/NetworkStateTracker;


# static fields
.field private static DBG:Z = false

.field private static final EVENT_PPPOE_STATE_CHANGED:I = 0xf

.field private static final LOCAL_LOGD:Z = true

.field private static final PPPOE_CONNECTED:I = 0x5

.field private static final PPPOE_DISCONNECTED:I = 0x6

.field private static final PPPOE_DISCONNECTING:I = 0x8

.field private static final PPPOE_RECONNECT:I = 0x7

.field private static final TAG:Ljava/lang/String; = "PppoeStateTracker"


# instance fields
.field private gateway:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInterfaceName:Ljava/lang/String;

.field private mLastState:I

.field private mLinkCapabilities:Landroid/net/LinkCapabilities;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

.field private mPppoeStarted:Z

.field private final mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTarget:Landroid/os/Handler;

.field private mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTornDownByConnMgr:Z

.field private mWM:Landroid/net/pppoe/PppoeManager;

.field private mWifiPppoeState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/pppoe/PppoeStateTracker;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5
    .parameter "context"
    .parameter "target"

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 133
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 102
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    iput-boolean v4, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeStarted:Z

    .line 117
    iput v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 136
    iput-object p2, p0, Landroid/net/pppoe/PppoeStateTracker;->mTarget:Landroid/os/Handler;

    .line 137
    iput-object p1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    .line 138
    new-instance v0, Landroid/net/NetworkInfo;

    const/16 v1, 0xe

    const-string v2, "PPPOE"

    const-string v3, ""

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 139
    new-instance v0, Landroid/net/LinkProperties;

    invoke-direct {v0}, Landroid/net/LinkProperties;-><init>()V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 140
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 141
    new-instance v0, Landroid/net/pppoe/PppoeMonitor;

    invoke-direct {v0, p0}, Landroid/net/pppoe/PppoeMonitor;-><init>(Landroid/net/pppoe/PppoeStateTracker;)V

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    .line 142
    const-string/jumbo v0, "pppoe.interface"

    const-string/jumbo v1, "ppp9"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "net.ppp9.gw"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->gateway:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    .line 147
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    .line 148
    return-void
.end method

.method private setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v3, 0x1

    .line 306
    const-string v4, "PppoeStateTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDetailed state, old ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and new state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v4, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-eq p1, v4, :cond_1

    .line 309
    iget-object v4, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    move v2, v3

    .line 310
    .local v2, wasConnecting:Z
    :goto_0
    iget-object v4, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_0

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v4, :cond_0

    if-nez p2, :cond_0

    if-eqz v0, :cond_0

    .line 318
    move-object p2, v0

    .line 319
    :cond_0
    iget-object v4, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v4, p0, Landroid/net/pppoe/PppoeStateTracker;->mTarget:Landroid/os/Handler;

    new-instance v5, Landroid/net/NetworkInfo;

    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v5, v6}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v4, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 321
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 323
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #wasConnecting:Z
    :cond_1
    return-void

    .line 309
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelPppoeNotification()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x10900ae

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public captivePortalCheckComplete()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method public defaultRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 526
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 527
    return-void
.end method

.method public getLinkCapabilities()Landroid/net/LinkCapabilities;
    .locals 2

    .prologue
    .line 476
    new-instance v0, Landroid/net/LinkCapabilities;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/LinkCapabilities;-><init>(Landroid/net/LinkCapabilities;)V

    return-object v0
.end method

.method public getLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 466
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    return-object v0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getPppoeState()I
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    const-string/jumbo v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 327
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 330
    :sswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 332
    :pswitch_1
    iget v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    if-eq v6, v11, :cond_2

    .line 333
    const-string v6, "PppoeStateTracker"

    const-string/jumbo v7, "recv PPPOE_CONNECTED!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    invoke-virtual {v6, v8}, Landroid/net/pppoe/PppoeMonitor;->setPppoeStarted(Z)V

    .line 335
    const-string/jumbo v6, "net.ppp9.gw"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->gateway:Ljava/lang/String;

    .line 336
    const-string/jumbo v6, "net.pppoe.local-ip"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 337
    .local v4, strLocalIp:Ljava/lang/String;
    const-string/jumbo v6, "net.pppoe.remote-ip"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, strRemoteIp:Ljava/lang/String;
    const-string/jumbo v6, "net.pppoe.dns1"

    const-string v7, "8.8.8.8"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, strDns1:Ljava/lang/String;
    const-string/jumbo v6, "net.pppoe.dns2"

    const-string v7, "8.8.8.8"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, strDns2:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->gateway:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 341
    const-string v6, "PppoeStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gateway = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/pppoe/PppoeStateTracker;->gateway:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    :try_start_0
    new-instance v1, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/LinkAddress;

    const-string v7, "0.0.0.0"

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 345
    .local v1, routeInfo:Landroid/net/RouteInfo;
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    new-instance v7, Landroid/net/LinkAddress;

    invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    const/16 v9, 0x18

    invoke-direct {v7, v8, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 346
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6, v1}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 347
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v7, p0, Landroid/net/pppoe/PppoeStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 348
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 349
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v1           #routeInfo:Landroid/net/RouteInfo;
    :goto_1
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6, v10}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 354
    invoke-virtual {p0, v11}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    .line 355
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v6}, Landroid/net/pppoe/PppoeStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 356
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeNotification()V

    .line 358
    .end local v2           #strDns1:Ljava/lang/String;
    .end local v3           #strDns2:Ljava/lang/String;
    .end local v4           #strLocalIp:Ljava/lang/String;
    .end local v5           #strRemoteIp:Ljava/lang/String;
    :cond_2
    iput v11, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    goto/16 :goto_0

    .line 350
    .restart local v2       #strDns1:Ljava/lang/String;
    .restart local v3       #strDns2:Ljava/lang/String;
    .restart local v4       #strLocalIp:Ljava/lang/String;
    .restart local v5       #strRemoteIp:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v6, "PppoeStateTracker"

    const-string v7, "UnknownHostException "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    .end local v0           #e:Ljava/net/UnknownHostException;
    .end local v2           #strDns1:Ljava/lang/String;
    .end local v3           #strDns2:Ljava/lang/String;
    .end local v4           #strLocalIp:Ljava/lang/String;
    .end local v5           #strRemoteIp:Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->stopPppoe()Z

    .line 362
    iget v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    if-eq v6, v10, :cond_3

    .line 363
    const-string v6, "PppoeStateTracker"

    const-string/jumbo v7, "recv PPPOE_DISCONNECTED!!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 365
    invoke-virtual {p0, v10}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    .line 366
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v6}, Landroid/net/pppoe/PppoeStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 367
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->cancelPppoeNotification()V

    .line 369
    iget-object v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v6}, Landroid/net/LinkProperties;->clear()V

    .line 371
    :cond_3
    iput v10, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    goto/16 :goto_0

    .line 374
    :pswitch_3
    iget v6, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    if-eqz v6, :cond_0

    .line 375
    invoke-virtual {p0, v8}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    .line 376
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v6}, Landroid/net/pppoe/PppoeStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 382
    :sswitch_1
    const-string v6, "PppoeStateTracker"

    const-string/jumbo v7, "recv PPPOE_RECONNECT"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v6

    if-eq v6, v11, :cond_0

    .line 384
    const-string v6, "PppoeStateTracker"

    const-string v7, "begin in starteventloop and start pppoe!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->startEventLoop()V

    .line 386
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->startPppoe()Z

    goto/16 :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch

    .line 330
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDefaultRouteSet()Z
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mDefaultRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isPrivateDnsRouteSet()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public isTeardownRequested()Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method notifyPppoeConnected()V
    .locals 3

    .prologue
    .line 240
    const/16 v0, 0xf

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 241
    return-void
.end method

.method notifyPppoeDisconnected()V
    .locals 3

    .prologue
    .line 231
    const/16 v0, 0xf

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 232
    return-void
.end method

.method notifyPppoeDisconnecting()V
    .locals 3

    .prologue
    .line 245
    const/16 v0, 0xf

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method

.method public privateDnsRouteSet(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 512
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPrivateDnsRouteSet:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 513
    return-void
.end method

.method public reconnect()Z
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x2

    .line 213
    const-string v1, "PppoeStateTracker"

    const-string v2, "enter reconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 216
    const-string v1, "PppoeStateTracker"

    const-string v2, "enter reconnect begin start PPPOE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0, v3}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    .line 218
    const/4 v1, 0x0

    invoke-static {p0, v4, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public setDependencyMet(Z)V
    .locals 0
    .parameter "met"

    .prologue
    .line 545
    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 1
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 293
    invoke-direct {p0, p1, v0, v0}, Landroid/net/pppoe/PppoeStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 492
    return-void
.end method

.method public setPppoeNotification()V
    .locals 11

    .prologue
    const v10, 0x10900ae

    const/4 v9, 0x0

    .line 249
    const-string v1, "PppoeStateTracker"

    const-string v5, "enter notify"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 278
    :goto_0
    return-void

    .line 253
    :cond_0
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.net.pppoe.PPPOE_NOTIFY"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v7, intent:Landroid/content/Intent;
    const/high16 v1, 0x3400

    invoke-virtual {v7, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v1, v9, v7, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 257
    .local v6, contentIntent:Landroid/app/PendingIntent;
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 258
    .local v8, notification:Landroid/app/Notification;
    const v1, 0x1080710

    iput v1, v8, Landroid/app/Notification;->icon:I

    .line 259
    iget v1, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v8, Landroid/app/Notification;->flags:I

    .line 261
    iput-object v6, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 262
    new-instance v0, Landroid/widget/RemoteViews;

    const-string v1, "com.android.phone"

    invoke-direct {v0, v1, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 264
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v1, 0x102039a

    const v5, 0x108077d

    invoke-virtual {v0, v1, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 266
    const-wide/16 v2, 0x0

    .line 267
    .local v2, chronometerBaseTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 269
    iput-object v0, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 270
    const-string v4, ""

    .line 271
    .local v4, expandedViewLine1:Ljava/lang/String;
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    const v5, 0x104060c

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 273
    const v1, 0x102039b

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 275
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 277
    const-string v1, "PppoeStateTracker"

    const-string v5, "leave notify"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPppoeStarted(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    invoke-virtual {v0, p1}, Landroid/net/pppoe/PppoeMonitor;->setPppoeStarted(Z)V

    .line 178
    return-void
.end method

.method public setPppoeState(I)V
    .locals 4
    .parameter "pppoeState"

    .prologue
    .line 412
    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter setPppoeState state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 414
    iput p1, p0, Landroid/net/pppoe/PppoeStateTracker;->mLastState:I

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.pppoe.PPPOE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 418
    const-string/jumbo v1, "pppoe_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    iget-object v1, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 421
    const-string v1, "PppoeStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leave setPppoeState state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    .line 198
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mWM:Landroid/net/pppoe/PppoeManager;

    invoke-virtual {v0, p1}, Landroid/net/pppoe/PppoeManager;->setPppoeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setTeardownRequested(Z)V
    .locals 1
    .parameter "isRequested"

    .prologue
    .line 538
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 539
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 484
    return-void
.end method

.method public startEventLoop()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/pppoe/PppoeMonitor;->setPppoeStarted(Z)V

    .line 173
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeMonitor:Landroid/net/pppoe/PppoeMonitor;

    invoke-virtual {v0}, Landroid/net/pppoe/PppoeMonitor;->startMonitoring()V

    .line 174
    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pppoe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/pppoe/PppoeManager;

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mWM:Landroid/net/pppoe/PppoeManager;

    .line 164
    return-void
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "target"

    .prologue
    .line 155
    iget-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pppoe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/pppoe/PppoeManager;

    iput-object v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mWM:Landroid/net/pppoe/PppoeManager;

    .line 156
    return-void
.end method

.method public declared-synchronized startPppoe()Z
    .locals 1

    .prologue
    .line 425
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeStarted:Z

    .line 426
    invoke-static {}, Landroid/net/pppoe/PppoeNative;->startPppoe()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 441
    const/4 v0, -0x1

    return v0
.end method

.method public declared-synchronized stopPppoe()Z
    .locals 1

    .prologue
    .line 430
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/net/pppoe/PppoeStateTracker;->mPppoeStarted:Z

    .line 431
    invoke-static {}, Landroid/net/pppoe/PppoeNative;->stopPppoe()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    .line 451
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    const-string v0, "PppoeStateTracker"

    const-string/jumbo v1, "teardown was called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->getPppoeState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 398
    invoke-virtual {p0, v2}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeStarted(Z)V

    .line 399
    invoke-virtual {p0}, Landroid/net/pppoe/PppoeStateTracker;->stopPppoe()Z

    .line 400
    invoke-virtual {p0, v2}, Landroid/net/pppoe/PppoeStateTracker;->setPppoeState(I)V

    .line 402
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
