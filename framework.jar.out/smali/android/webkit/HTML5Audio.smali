.class Landroid/webkit/HTML5Audio;
.super Landroid/os/Handler;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5Audio$1;,
        Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;,
        Landroid/webkit/HTML5Audio$TimeupdateTask;
    }
.end annotation


# static fields
.field private static COMPLETE:I = 0x0

.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field private static ERROR:I = 0x0

.field private static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field private static IDLE:I = 0x0

.field private static INITIALIZED:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "HTML5Audio"

.field private static PAUSED:I = 0x0

.field private static PAUSE_BY_FOCUS_LOSS:I = 0x0

.field private static PAUSE_BY_FOCUS_LOSS_TRANSIENT:I = 0x0

.field private static PAUSE_NONE:I = 0x0

.field private static PREPARED:I = 0x0

.field private static STARTED:I = 0x0

.field private static STOPPED:I = 0x0

.field private static final TIMEUPDATE:I = 0x64

.field private static final TIMEUPDATE_PERIOD:I = 0xfa


# instance fields
.field private mAskToPlay:Z

.field private mContext:Landroid/content/Context;

.field private final mIsBrowserApp:Z

.field private mIsPrivateBrowsingEnabledGetter:Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

.field private mLoopEnabled:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNativePointer:I

.field private mPauseAction:I

.field private mProcessingOnEnd:Z

.field private mState:I

.field private mTimer:Ljava/util/Timer;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    sput v1, Landroid/webkit/HTML5Audio;->IDLE:I

    .line 59
    sput v2, Landroid/webkit/HTML5Audio;->INITIALIZED:I

    .line 60
    sput v3, Landroid/webkit/HTML5Audio;->PREPARED:I

    .line 61
    const/4 v0, 0x4

    sput v0, Landroid/webkit/HTML5Audio;->STARTED:I

    .line 62
    const/4 v0, 0x5

    sput v0, Landroid/webkit/HTML5Audio;->COMPLETE:I

    .line 63
    const/4 v0, 0x6

    sput v0, Landroid/webkit/HTML5Audio;->PAUSED:I

    .line 64
    const/4 v0, -0x2

    sput v0, Landroid/webkit/HTML5Audio;->STOPPED:I

    .line 65
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5Audio;->ERROR:I

    .line 69
    sput v1, Landroid/webkit/HTML5Audio;->PAUSE_NONE:I

    .line 70
    sput v2, Landroid/webkit/HTML5Audio;->PAUSE_BY_FOCUS_LOSS:I

    .line 71
    sput v3, Landroid/webkit/HTML5Audio;->PAUSE_BY_FOCUS_LOSS_TRANSIENT:I

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebViewCore;I)V
    .locals 3
    .parameter "webViewCore"
    .parameter "nativePtr"

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 67
    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 73
    sget v0, Landroid/webkit/HTML5Audio;->PAUSE_NONE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mPauseAction:I

    .line 76
    iput-boolean v1, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    .line 77
    iput-boolean v1, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    .line 78
    iput-boolean v1, p0, Landroid/webkit/HTML5Audio;->mProcessingOnEnd:Z

    .line 199
    iput p2, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    .line 200
    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mContext:Landroid/content/Context;

    .line 201
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 202
    new-instance v0, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebViewClassic()Landroid/webkit/WebViewClassic;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;-><init>(Landroid/webkit/HTML5Audio;Landroid/os/Looper;Landroid/webkit/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    .line 204
    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getIsBrowserApp()Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/HTML5Audio;->mIsBrowserApp:Z

    .line 205
    return-void
.end method

.method private getMaxTimeSeekable()F
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_0

    .line 362
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a

    div-float/2addr v0, v1

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnBuffering(II)V
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRequestPlay(I)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private pause()V
    .locals 2

    .prologue
    .line 331
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->STARTED:I

    if-ne v0, v1, :cond_1

    .line 332
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 335
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 336
    sget v0, Landroid/webkit/HTML5Audio;->PAUSED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 338
    :cond_1
    return-void
.end method

.method private play()V
    .locals 6

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x1

    .line 297
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->COMPLETE:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    if-ne v2, v4, :cond_2

    .line 299
    iget-boolean v2, p0, Landroid/webkit/HTML5Audio;->mIsBrowserApp:Z

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5Audio;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 302
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 303
    sget v2, Landroid/webkit/HTML5Audio;->STARTED:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 304
    sget v2, Landroid/webkit/HTML5Audio;->PAUSE_NONE:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mPauseAction:I

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 308
    :cond_2
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->ERROR:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 309
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 310
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkit/HTML5Audio;->setDataSource(Ljava/lang/String;)V

    .line 311
    iput-boolean v4, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    .line 314
    :cond_3
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-lt v2, v3, :cond_1

    .line 315
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 316
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 319
    .local v1, result:I
    if-ne v1, v4, :cond_1

    .line 320
    iget-boolean v2, p0, Landroid/webkit/HTML5Audio;->mIsBrowserApp:Z

    if-eqz v2, :cond_4

    .line 321
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5Audio;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v5}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 323
    :cond_4
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 324
    sget v2, Landroid/webkit/HTML5Audio;->STARTED:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 325
    sget v2, Landroid/webkit/HTML5Audio;->PAUSE_NONE:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mPauseAction:I

    goto :goto_0
.end method

.method private resetMediaPlayer()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 213
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 214
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 215
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 216
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 217
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 220
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 223
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    .line 224
    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 225
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method private seek(I)V
    .locals 3
    .parameter "msec"

    .prologue
    const/4 v2, 0x1

    .line 341
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mProcessingOnEnd:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->COMPLETE:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 342
    iput-boolean v2, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    .line 344
    :cond_0
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_1

    .line 345
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 347
    :cond_1
    return-void
.end method

.method private setDataSource(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/16 v6, 0x80

    .line 228
    iput-object p1, p0, Landroid/webkit/HTML5Audio;->mUrl:Ljava/lang/String;

    .line 230
    :try_start_0
    iget v4, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v5, Landroid/webkit/HTML5Audio;->IDLE:I

    if-eq v4, v5, :cond_0

    .line 231
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 233
    :cond_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {v5}, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->get()Z

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, cookieValue:Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 238
    const-string v4, "Cookie"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_1
    iget-object v4, p0, Landroid/webkit/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {v4}, Landroid/webkit/HTML5Audio$IsPrivateBrowsingEnabledGetter;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    const-string/jumbo v4, "x-hide-urls-from-log"

    const-string/jumbo v5, "true"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_2
    iget-object v4, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 245
    sget v4, Landroid/webkit/HTML5Audio;->INITIALIZED:I

    iput v4, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 246
    iget-object v4, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v0           #cookieValue:Ljava/lang/String;
    .end local v3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, debugUrl:Ljava/lang/String;
    :goto_1
    const-string v4, "HTML5Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t load the resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    goto :goto_0

    .end local v1           #debugUrl:Ljava/lang/String;
    :cond_3
    move-object v1, p1

    .line 248
    goto :goto_1
.end method

.method private teardown()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 356
    sget v0, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 357
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    .line 358
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 130
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 133
    :pswitch_0
    :try_start_0
    iget v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v3, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 135
    .local v1, position:I
    iget v2, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v1, v2}, Landroid/webkit/HTML5Audio;->nativeOnTimeupdate(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1           #position:I
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/IllegalStateException;
    sget v2, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v2, p0, Landroid/webkit/HTML5Audio;->mState:I

    goto :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 2
    .parameter "focusChange"

    .prologue
    .line 256
    packed-switch p1, :pswitch_data_0

    .line 293
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 259
    :pswitch_1
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 260
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    goto :goto_0

    .line 261
    :cond_1
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->PAUSED:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/webkit/HTML5Audio;->mPauseAction:I

    sget v1, Landroid/webkit/HTML5Audio;->PAUSE_BY_FOCUS_LOSS_TRANSIENT:I

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 264
    sget v0, Landroid/webkit/HTML5Audio;->STARTED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 265
    sget v0, Landroid/webkit/HTML5Audio;->PAUSE_NONE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mPauseAction:I

    goto :goto_0

    .line 271
    :pswitch_2
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 274
    sget v0, Landroid/webkit/HTML5Audio;->PAUSED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 275
    sget v0, Landroid/webkit/HTML5Audio;->PAUSE_BY_FOCUS_LOSS:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mPauseAction:I

    .line 276
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5Audio;->nativeOnPaused(I)V

    goto :goto_0

    .line 286
    :pswitch_3
    iget v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    sget v1, Landroid/webkit/HTML5Audio;->ERROR:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->pause()V

    .line 288
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5Audio;->nativeOnPaused(I)V

    .line 289
    sget v0, Landroid/webkit/HTML5Audio;->PAUSE_BY_FOCUS_LOSS_TRANSIENT:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mPauseAction:I

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .parameter "mp"
    .parameter "percent"

    .prologue
    .line 150
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, p2, v0}, Landroid/webkit/HTML5Audio;->nativeOnBuffering(II)V

    .line 151
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 156
    sget v0, Landroid/webkit/HTML5Audio;->COMPLETE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 157
    iput-boolean v2, p0, Landroid/webkit/HTML5Audio;->mProcessingOnEnd:Z

    .line 158
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5Audio;->nativeOnEnded(I)V

    .line 159
    iput-boolean v1, p0, Landroid/webkit/HTML5Audio;->mProcessingOnEnd:Z

    .line 160
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    if-ne v0, v2, :cond_0

    .line 161
    iget v0, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkit/HTML5Audio;->nativeOnRequestPlay(I)V

    .line 162
    iput-boolean v1, p0, Landroid/webkit/HTML5Audio;->mLoopEnabled:Z

    .line 164
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 168
    sget v0, Landroid/webkit/HTML5Audio;->ERROR:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 169
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->resetMediaPlayer()V

    .line 170
    sget v0, Landroid/webkit/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .parameter "mp"

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v6, 0x0

    .line 176
    sget v0, Landroid/webkit/HTML5Audio;->PREPARED:I

    iput v0, p0, Landroid/webkit/HTML5Audio;->mState:I

    .line 177
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Landroid/webkit/HTML5Audio;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5Audio$TimeupdateTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/HTML5Audio$TimeupdateTask;-><init>(Landroid/webkit/HTML5Audio;Landroid/webkit/HTML5Audio$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget v1, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v6, v6, v1}, Landroid/webkit/HTML5Audio;->nativeOnPrepared(IIII)V

    .line 182
    iget-boolean v0, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    if-eqz v0, :cond_1

    .line 183
    iput-boolean v6, p0, Landroid/webkit/HTML5Audio;->mAskToPlay:Z

    .line 184
    invoke-direct {p0}, Landroid/webkit/HTML5Audio;->play()V

    .line 186
    :cond_1
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Landroid/webkit/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v1}, Landroid/webkit/HTML5Audio;->nativeOnTimeupdate(II)V

    .line 191
    return-void
.end method
