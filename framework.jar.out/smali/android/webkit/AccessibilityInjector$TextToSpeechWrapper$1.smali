.class Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;


# direct methods
.method constructor <init>(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)V
    .locals 0
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 755
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    #getter for: Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$600(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    monitor-enter v1

    .line 756
    :try_start_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    #getter for: Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mShutdown:Z
    invoke-static {v0}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$700(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 757
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    invoke-static {}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Initialized successfully"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    const/4 v2, 0x1

    #setter for: Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z
    invoke-static {v0, v2}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$902(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;Z)Z

    .line 769
    :goto_0
    monitor-exit v1

    .line 770
    return-void

    .line 763
    :cond_1
    invoke-static {}, Landroid/webkit/AccessibilityInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 764
    invoke-static {}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Failed to initialize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2
    iget-object v0, p0, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper$1;->this$0:Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;

    const/4 v2, 0x0

    #setter for: Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->mReady:Z
    invoke-static {v0, v2}, Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;->access$902(Landroid/webkit/AccessibilityInjector$TextToSpeechWrapper;Z)Z

    goto :goto_0

    .line 769
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
