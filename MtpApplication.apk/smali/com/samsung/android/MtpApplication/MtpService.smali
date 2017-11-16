.class public Lcom/samsung/android/MtpApplication/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/MtpApplication/MtpService$1;,
        Lcom/samsung/android/MtpApplication/MtpService$2;,
        Lcom/samsung/android/MtpApplication/MtpService$3;,
        Lcom/samsung/android/MtpApplication/MtpService$4;,
        Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;
    }
.end annotation


# static fields
.field static EmergencyRegistered:Z

.field static MtpMediaReceiver:Z

.field static PolicyRegistered:Z

.field static mtpServiceHandler:Landroid/os/Handler;

.field static sdCardCurrentStatus:Z

.field static userPresentRegistered:Z


# instance fields
.field binder:Landroid/os/Binder;

.field private jniObj:Landroid/mtp/MTPJNIInterface;

.field private mContext:Landroid/content/Context;

.field mNotiManager:Landroid/app/NotificationManager;

.field private mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field mThread:Landroid/os/HandlerThread;

.field private final mtpEmergencyReceiver:Landroid/content/BroadcastReceiver;

.field private final mtpMediaReceiver:Landroid/content/BroadcastReceiver;

.field private final mtpPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/MtpApplication/MtpService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpService;->manageProcessForeground(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpService;->unRegisterAllIntent(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->PolicyRegistered:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->MtpMediaReceiver:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->EmergencyRegistered:Z

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->sdCardCurrentStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mNotiManager:Landroid/app/NotificationManager;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->binder:Landroid/os/Binder;

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpService$1;-><init>(Lcom/samsung/android/MtpApplication/MtpService;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpPolicyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpService$2;-><init>(Lcom/samsung/android/MtpApplication/MtpService;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpEmergencyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpService$3;-><init>(Lcom/samsung/android/MtpApplication/MtpService;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpMediaReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpService$4;-><init>(Lcom/samsung/android/MtpApplication/MtpService;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static isUsbDisconnected()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string/jumbo v1, "/sys/class/android_usb/android0/state"

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "DISCONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "MtpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/sys/class/android_usb/android0/state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MtpService"

    const-string/jumbo v4, "cannot open file : /sys/class/android_usb/android0/state"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    return v6
.end method

.method private manageProcessForeground(Z)V
    .locals 4

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService;->binder:Landroid/os/Binder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService;->binder:Landroid/os/Binder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-interface {v1, v2, v3, p1}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private registerBroadCastEmergencyRec()V
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "< MTP > Registering BroadCast registerBroadCastEmergencyRec :::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpEmergencyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/MtpApplication/MtpService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->EmergencyRegistered:Z

    return-void
.end method

.method private registerBroadCastPolicyRec()V
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "< MTP > Registering BroadCast registerBroadCastPolicyRec :::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/MtpApplication/MtpService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->PolicyRegistered:Z

    return-void
.end method

.method private registerBroadCastRec()V
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "< MTP > Registering BroadCast receiver :::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "file"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpMediaReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/MtpApplication/MtpService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->MtpMediaReceiver:Z

    return-void
.end method

.method private registerBroadCastuserPresentRec()V
    .locals 6

    const/4 v4, 0x0

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "< MTP > Registering BroadCast receiver for USER Present:::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/MtpApplication/MtpService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    return-void
.end method

.method static setHandler(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method private unRegisterAllIntent(Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->PolicyRegistered:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MtpService"

    const-string/jumbo v2, "Unregister Mtp disable Receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->PolicyRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->EmergencyRegistered:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MtpService"

    const-string/jumbo v2, "Unregister mtpEmergencyReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpEmergencyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->EmergencyRegistered:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    :try_start_2
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MtpService"

    const-string/jumbo v2, "unregistering mtpUserPresentReceiver in UnregisterAllIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    :try_start_3
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->MtpMediaReceiver:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "MtpService"

    const-string/jumbo v2, "unregistering mtpMediaReceiver in UnregisterAllIntent"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mtpMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpService;->MtpMediaReceiver:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MtpService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MtpService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v1, "MtpService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_3
    move-exception v0

    const-string/jumbo v1, "MtpService"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "onBind."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "onCreate."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MtpService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;-><init>(Lcom/samsung/android/MtpApplication/MtpService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpService;->registerBroadCastRec()V

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getMtpContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "mContext is NULL so getting the getApplicationContext"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/MtpApplication/MtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mtp_drive_display"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "Calling registerBroadCastuserPresentRec() "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpService;->registerBroadCastuserPresentRec()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpService;->registerBroadCastPolicyRec()V

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpService;->registerBroadCastEmergencyRec()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "MtpService"

    const-string/jumbo v1, "onDestroy."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/MtpApplication/MtpService;->manageProcessForeground(Z)V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/MtpApplication/MtpService;->unRegisterAllIntent(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->jniObj:Landroid/mtp/MTPJNIInterface;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string/jumbo v1, "MtpService"

    const-string/jumbo v2, "onStartCommand."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p3, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpService;->mServiceHandler:Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/MtpApplication/MtpService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    return v1
.end method
