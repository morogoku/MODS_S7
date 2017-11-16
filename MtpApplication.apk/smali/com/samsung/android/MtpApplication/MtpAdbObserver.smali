.class public Lcom/samsung/android/MtpApplication/MtpAdbObserver;
.super Landroid/database/ContentObserver;
.source "MtpAdbObserver.java"


# static fields
.field static cr:Landroid/content/ContentResolver;

.field static handle:Landroid/os/Handler;

.field static mContext:Landroid/content/Context;

.field static mtpAdbHandler:Landroid/os/Handler;

.field private static mtpAdbObserver:Lcom/samsung/android/MtpApplication/MtpAdbObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->cr:Landroid/content/ContentResolver;

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mtpAdbHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->handle:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->handle:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/MtpApplication/MtpAdbObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mtpAdbObserver:Lcom/samsung/android/MtpApplication/MtpAdbObserver;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/MtpApplication/MtpAdbObserver;
    .locals 2

    const-class v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mtpAdbObserver:Lcom/samsung/android/MtpApplication/MtpAdbObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerContentObserver()V
    .locals 4

    const-string/jumbo v1, "MtpAdbObserver"

    const-string/jumbo v2, "Inside registerContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->handle:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/samsung/android/MtpApplication/MtpAdbObserver;-><init>(Landroid/os/Handler;)V

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v2, "adb_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static setHandler(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mtpAdbHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method adbStatusChangeUpdate()V
    .locals 3

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mtpAdbHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mtpAdbHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xce

    iput v1, v0, Landroid/os/Message;->what:I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mtpAdbHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string/jumbo v1, "MtpAdbObserver"

    const-string/jumbo v2, "ADB_CHANGED sent to MtpReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, "MtpAdbObserver"

    const-string/jumbo v1, "onChange is called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->adbStatusChangeUpdate()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "MtpAdbObserver"

    const-string/jumbo v1, "inside setContext()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->registerContentObserver()V

    return-void
.end method
