.class public Lcom/samsung/android/MtpApplication/MtpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/MtpApplication/MtpReceiver$1;,
        Lcom/samsung/android/MtpApplication/MtpReceiver$2;,
        Lcom/samsung/android/MtpApplication/MtpReceiver$3;
    }
.end annotation


# static fields
.field public static PCguid:Ljava/lang/String;

.field private static PCguidPath:Ljava/lang/String;

.field static PrivateExists:Z

.field static adbUpdate:Lcom/samsung/android/MtpApplication/MtpAdbObserver;

.field static blockStatusSet:Z

.field public static boot_completed:Ljava/lang/String;

.field static configured:Z

.field static connected:Z

.field public static final countryCode:Ljava/lang/String;

.field static currentUserId:I

.field public static final deviceProductName:Ljava/lang/String;

.field static displayDriverPopup:Z

.field private static driverdisplayStatus:Ljava/lang/String;

.field private static externalStorageTempPath:Ljava/lang/String;

.field private static firstMediaMount:Z

.field static firstTimeResetDone:Z

.field static gadgetReset:Z

.field static isAcquired:Z

.field static isCheckedBootComplete:Z

.field static isConnectedwithdriver:Z

.field static isSynchronizing:Z

.field static lockStatusSet:Z

.field static mContext:Landroid/content/Context;

.field public static mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private static mFirstTime:Z

.field static mHandler:Landroid/os/Handler;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public static mountPath:Ljava/lang/String;

.field static mtpEnabled:Z

.field static notifyAppHandler:Landroid/os/Handler;

.field static nousbdriverReset:Z

.field static playlistUpdate:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

.field static policyStatusSet:Z

.field public static popupMode:Ljava/lang/String;

.field static privatemodeSet:Z

.field static ptpEnabled:Z

.field static qcomIgnoretwice:Z

.field static sdCardExists:Z

.field static sec_charging:Z

.field static statusUpdate:Landroid/mtp/MTPJNIInterface;

.field public static updateThread:Ljava/lang/Thread;

.field static usb30Mode:Z

.field static usb_data_unlock:Z


# instance fields
.field private admin:Landroid/content/ComponentName;

.field private dpm:Landroid/app/admin/DevicePolicyManager;

.field iService:Landroid/content/Intent;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mNotiHandler:Landroid/os/Handler;

.field private mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field mStartMtpHandler:Landroid/os/Handler;

.field private final mUEventObserver:Landroid/os/UEventObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/app/admin/DevicePolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/MtpApplication/MtpReceiver;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get2()Landroid/telephony/TelephonyManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/os/UEventObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/MtpApplication/MtpReceiver;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static synthetic -set2(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0

    sput-object p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/MtpApplication/MtpReceiver;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetDisconnectAndConnectCheck()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/MtpApplication/MtpReceiver;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getPcGUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/MtpApplication/MtpReceiver;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendMsg(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->setDvfsBooster(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->externalStorageTempPath:Ljava/lang/String;

    const-string/jumbo v0, "/sys/devices/virtual/misc/usb_mtp_gadget/guid"

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguidPath:Ljava/lang/String;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->driverdisplayStatus:Ljava/lang/String;

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->deviceProductName:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.country_code"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->countryCode:Ljava/lang/String;

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCheckedBootComplete:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->policyStatusSet:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->qcomIgnoretwice:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->firstTimeResetDone:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->PrivateExists:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb30Mode:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->nousbdriverReset:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->firstMediaMount:Z

    sput-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->playlistUpdate:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->adbUpdate:Lcom/samsung/android/MtpApplication/MtpAdbObserver;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mHandler:Landroid/os/Handler;

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    sput v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.MtpApplication"

    const-string/jumbo v2, "MtpReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->admin:Landroid/content/ComponentName;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpReceiver$1;-><init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpReceiver$2;-><init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/MtpApplication/MtpReceiver$3;-><init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    return-void
.end method

.method private deleteDir(Ljava/lang/String;)V
    .locals 9

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v4, 0x0

    array-length v5, v1

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/android/MtpApplication/MtpReceiver;->deleteDir(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "MTPRx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "delete Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "MTPRx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "delete Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method static disableDrive(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "context is NULL in disable drive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "disabling the Drive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mtp_drive_display"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "dev.kies.drivedisplay"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "Sending MTP_MODE_RESTRICTED_POLICY to stack"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private gadgetDisconnectAndConnectCheck()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string/jumbo v5, "/data/data/com.samsung.android.MtpApplication/gadgetDisconnectAndConnect.txt"

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->read()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    :cond_1
    :goto_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/data/data/com.samsung.android.MtpApplication/gadgetDisconnectAndConnect.txt"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "MTPRx"

    const-string/jumbo v8, "file f deletion failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-ne v10, v6, :cond_5

    return v10

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_3
    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_3
    :goto_4
    return v9

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_4
    :goto_6
    throw v7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    :cond_5
    return v9

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_5

    :catch_6
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method

.method public static getExternalStorageStatus()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "mContext is coming NULL is returning False :"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_0
    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "storage"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    if-nez v3, :cond_1

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "storageManager is coming NULL is returning False :"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_3

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    aget-object v5, v4, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->externalStorageTempPath:Ljava/lang/String;

    const-string/jumbo v5, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sd-Card path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "/storage/Private"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v0}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    const-string/jumbo v5, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Status for mount/Unmount :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "mounted"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "SDcard is not available"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "SDcard is  available"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    return v9

    :cond_6
    return v8
.end method

.method static getMtpContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPcGUID()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string/jumbo v5, "^.[a-zA-Z0-9]{8}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{4}-[a-zA-Z0-9]{12}.$"

    :try_start_0
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguidPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x26

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "MTPRx"

    const-string/jumbo v7, "This is not guid"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v2

    :catch_1
    move-exception v0

    const-string/jumbo v6, "MTPRx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot open file : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguidPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPrivateDirectory(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, " inside getprivateDirectory"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "context is coming NULL is returning False :"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/privatemode/PrivateModeManager;->getPrivateStorageDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "MTPRx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "privateDir Path is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method private isEDMRestrictionPolicy()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isUsbMediaPlayerAvailable"

    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "false"

    aput-object v5, v4, v7

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "isUsbMediaPlayerAvailable"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "MTPRx"

    const-string/jumbo v3, "RESTRICTIONPOLICY_USBMEDIAPLAYERAVAILABLE_METHOD is false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v8

    :catchall_0
    move-exception v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private isKnoxCustomPolicy()Z
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    const-string/jumbo v3, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getSealedUsbMassStorageState"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "getSealedUsbMassStorageState"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    if-eqz v7, :cond_1

    move v2, v9

    :goto_0
    return v2

    :catch_0
    move-exception v6

    :try_start_1
    const-string/jumbo v2, "MTPRx"

    const-string/jumbo v3, "exception KNOXCUSTOMMANAGERSERVICE_USBMASSSTORAGESTATE_METHOD."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return v9

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPrivateMode()Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "sys.samsung.personalpage.mode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, " is_Privatemode is 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, " Private mounted proeprly"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getPrivateDirectory(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->PrivateExists:Z

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v2, 0x72

    invoke-virtual {v1, v2}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3

    :cond_1
    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "Private not mountd properly"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "is_Privatemode is NOT 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->getInstance()Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->playlistUpdate:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->playlistUpdate:Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/MtpApplication/MtpPlaylistObserver;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->getInstance()Lcom/samsung/android/MtpApplication/MtpAdbObserver;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->adbUpdate:Lcom/samsung/android/MtpApplication/MtpAdbObserver;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->adbUpdate:Lcom/samsung/android/MtpApplication/MtpAdbObserver;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->setContext(Landroid/content/Context;)V

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/16 v0, 0xca

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    return-void

    :cond_1
    const-string/jumbo v0, "mtp_drive_display"

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "dev.kies.drivedisplay"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMsg(I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string/jumbo v1, "mtp_usb_conditions_met"

    invoke-static {p2, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->iService:Landroid/content/Intent;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpService;->setHandler(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpAdbObserver;->setHandler(Landroid/os/Handler;)V

    invoke-direct {p0, p3}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendMsg(I)V

    const-string/jumbo v1, "mtp_usb_conditions_met"

    invoke-static {p2, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->firstTimeResetDone:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "ro.hardware"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb30Mode:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->qcomIgnoretwice:Z

    sput-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->firstTimeResetDone:Z

    goto :goto_0
.end method

.method private declared-synchronized setDvfsBooster(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "MTPRx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inside setDvfsBooster, state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "mDvfsHelper acquire"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    const-wide v2, 0x3fecccccc0000000L    # 0.8999999761581421

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v0

    const-string/jumbo v1, "MTPRx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "_clock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_1

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :cond_1
    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x2328

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/MtpApplication/MtpReceiver$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/MtpApplication/MtpReceiver$5;-><init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V

    const-wide/16 v4, 0x1f40

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    if-nez p1, :cond_2

    :try_start_1
    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "mDvfsHelper release"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mDvfsHelper:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static setHandler(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->notifyAppHandler:Landroid/os/Handler;

    return-void
.end method

.method static startDBupdate()V
    .locals 2

    const-string/jumbo v0, "MTPRx"

    const-string/jumbo v1, "in startDBupdate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/MtpApplication/MtpReceiver$4;

    invoke-direct {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public changeChargingMode()V
    .locals 5

    const-string/jumbo v2, "MTPRx"

    const-string/jumbo v3, "in changeChargingMode : set USB MODE sec_charging"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usb"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const-string/jumbo v2, "CHINA"

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->countryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "sec_charging"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "adb_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "sec_charging,adb"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MTPRx"

    const-string/jumbo v3, "Unable to set usb mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v2, "sec_charging"

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public changeMtpMode()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mtp_running_status"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v6, v3, :cond_0

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-eqz v3, :cond_0

    new-instance v0, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->addGUID(Ljava/lang/String;)V

    sput-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "MTP is already running. Setting the status to unlock, exist guid"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mtp_drive_display"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "dev.kies.drivedisplay"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "enable_mtp_settings"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->nousbdriverReset:Z

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "usb"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "adb_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_2

    const-string/jumbo v3, "mtp,adb"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "Unable to set usb mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v3, "mtp"

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method finishSync()V
    .locals 5

    const/4 v4, 0x0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mtp_sync_alive"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "MS triggered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.intent.action.MTP_FILE_SCAN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "files"

    new-instance v2, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->getMyfilesDBList()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "Sending Broadcast finish"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->setDvfsBooster(Z)V

    :cond_0
    return-void
.end method

.method public getPersonaId()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    goto :goto_0
.end method

.method public getUsbdebugStatus()I
    .locals 5

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    sget-object v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "MTPRx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbdebugStatus() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string/jumbo v2, "MTPRx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbdebugStatus() is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public initializeSettingsValues(Landroid/content/ContentResolver;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCheckedBootComplete:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "MTPRx"

    const-string/jumbo v1, "in initializeSettingsValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mtp_usb_connection_status"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "media_player_mode"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "mtp_usb_conditions_met"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "media_mount_count"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "mtp_sync_alive"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "sdcard_launch"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "boot_time_connected"

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "mtp_event_status"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mtp_open_session"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v0, "mtp_running_status"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getExternalStorageStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->externalStorageTempPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.mtp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->deleteDir(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/.mtp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->deleteDir(Ljava/lang/String;)V

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->isCheckedBootComplete:Z

    :cond_1
    return-void
.end method

.method isSyncFinished()V
    .locals 4

    const/16 v3, 0xcc

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "in isSyncFinished posting message with delay of 4sec"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25

    sput-object p1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "In MtpReceiver"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isKnoxCustomPolicy()Z

    move-result v21

    if-eqz v21, :cond_1

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "MTP is disabled by KnoxCustomManager"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v21, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2e

    :cond_2
    const-string/jumbo v21, "sys.boot_completed"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "check value of boot_completed is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    if-eqz v21, :cond_5

    const-string/jumbo v21, "1"

    sget-object v22, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->initializeSettingsValues(Landroid/content/ContentResolver;)V

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "check booting is completed_sys.boot_completed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getExternalStorageStatus()Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    const-string/jumbo v21, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string/jumbo v21, "mtp_running_status"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_3

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    if-eqz v21, :cond_3

    const/16 v21, 0x0

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-nez v21, :cond_3

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v22, 0xd

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "MTP is already running. Setting the status to unlock"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "mtp_drive_display"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v21, "dev.kies.drivedisplay"

    const-string/jumbo v22, "1"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V

    :cond_3
    return-void

    :cond_4
    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "check booting is not completed_sys.boot_completed, so just return"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    return-void

    :cond_5
    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "check boot_completed is coming null_dev.sfbootcomplete"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string/jumbo v21, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-nez v10, :cond_7

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "extras from bundle is null. So return"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string/jumbo v21, "connected"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    const-string/jumbo v21, "configured"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    const-string/jumbo v21, "mtp"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    const-string/jumbo v21, "ptp"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    const-string/jumbo v21, "sec_charging"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    const-string/jumbo v21, "unlocked"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    const-string/jumbo v21, "mtp_running_status"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "value of connected is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "value of configured is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "value of mtpEnabled is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "value of ptpEnabled is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "value of sec_charging is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "value of usb_data_unlock is"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Received USB_STATE with sdCardLaunch = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "sdcard_launch"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    if-nez v21, :cond_b

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    :goto_1
    if-nez v21, :cond_8

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "Unexpected Disconnection. call usbRemoved."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    :cond_8
    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    if-eqz v21, :cond_9

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    if-eqz v21, :cond_c

    :cond_9
    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    if-eqz v21, :cond_22

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-nez v21, :cond_a

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    if-nez v21, :cond_a

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-eqz v21, :cond_22

    :cond_a
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_e

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mtpRunningStatus"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "MTP already launched. So return."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    const/16 v21, 0x1

    goto :goto_1

    :cond_c
    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-nez v21, :cond_d

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    if-eqz v21, :cond_9

    :cond_d
    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "usb_data_unlock is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", so MTP is disabled"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "mtp_switch_to_usb20"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/high16 v21, 0x10800000

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v21, "com.samsung.android.MtpApplication"

    const-string/jumbo v22, "com.samsung.android.MtpApplication.USBConnection"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v21, "mode"

    const-string/jumbo v22, "SWITCH20"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "mtp_switch_to_usb20"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_f
    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mFirstTime: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    if-nez v21, :cond_12

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_10

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-static {}, Lcom/samsung/android/encryption/EncryptionKey;->getkey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->SetCryptionKey(Ljava/lang/String;)V

    :cond_10
    const/4 v14, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    sget-object v22, Lcom/samsung/android/MtpApplication/MtpReceiver;->mountPath:Ljava/lang/String;

    const-string/jumbo v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    sput v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "currentUserId is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v14

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mtpCurrentGlobalUserId is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    move/from16 v0, v21

    if-eq v14, v0, :cond_11

    const/16 v21, 0x64

    move/from16 v0, v21

    if-ge v14, v0, :cond_11

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "currentUserId is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->currentUserId:I

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " mtpCurrentGlobalUserId is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " so not lauch MTP"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    :catch_1
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_11
    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "Start observing USB_STATE_MATCH "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    move-object/from16 v21, v0

    const-string/jumbo v22, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual/range {v21 .. v22}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    :cond_12
    const-string/jumbo v21, "sdcard_launch"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_13

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "SD card launch, so just return!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "sdcard_launch"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isPrivateMode()Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    return-void

    :cond_13
    new-instance v6, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getPcGUID()Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "enable_mtp_settings"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getUsbdebugStatus()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_14

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v7, v0, :cond_1c

    :cond_14
    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "enableMtpSettings is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "skip to display MTP popup."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isPrivateMode()Z

    move-result v21

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v22, "keyguard"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/KeyguardManager;

    invoke-virtual {v12}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v17

    const/16 v19, 0x0

    if-eqz v17, :cond_16

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Phone is locked : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v19

    if-eqz v19, :cond_16

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Secure lock : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v12}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_16

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    const-string/jumbo v21, "mtp_drive_display"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v21, "dev.kies.drivedisplay"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "Setting the status to phone Lock"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-eqz v21, :cond_1f

    const-string/jumbo v21, "dev.kies.drivedisplay.trust"

    const-string/jumbo v22, "4"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v21, "dev.kies.drivedisplay.trust"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->driverdisplayStatus:Ljava/lang/String;

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "driverdisplay.trust Status = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->driverdisplayStatus:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_17

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v22, "persona"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_17
    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string/jumbo v22, "shared_device_status"

    const/16 v23, 0x0

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Shared devices keyguard status: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_18

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v21

    if-eqz v21, :cond_19

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Secure lock : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/knox/SemPersonaManager;->getKeyguardShowState(I)Z

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_19

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    const-string/jumbo v21, "mtp_drive_display"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v21, "dev.kies.drivedisplay"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "Setting the status to phone Lock"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    const-string/jumbo v21, "boot_time_connected"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_1a

    const-string/jumbo v21, "boot_time_connected"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "Sending NORMAL_BOOT to stack"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_1a

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v22, 0x11

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_1b

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v22, "device_policy"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->admin:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-eqz v21, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->dpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/app/admin/DevicePolicyManager;->semGetAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v21

    if-nez v21, :cond_26

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "desktop sync is not allowed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const v22, 0x7f040015

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Toast;->show()V

    const/16 v21, 0x0

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mUEventObserver:Landroid/os/UEventObserver;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/UEventObserver;->stopObserving()V

    return-void

    :cond_1c
    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-nez v21, :cond_1e

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-eqz v21, :cond_15

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    if-eqz v21, :cond_1d

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->isExistGUID(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1e

    :cond_1d
    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    if-nez v21, :cond_15

    :cond_1e
    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Phone is locked for first connection. sec_charging : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_15

    const-string/jumbo v21, "mtp_running_status"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    const-string/jumbo v21, "mtp_drive_display"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v21, "dev.kies.drivedisplay"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1f
    const-string/jumbo v22, "dev.kies.drivedisplay.trust"

    if-eqz v19, :cond_20

    const/16 v21, 0x1

    :goto_5
    shl-int/lit8 v23, v21, 0x1

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-eqz v21, :cond_21

    const/16 v21, 0x1

    :goto_6
    or-int v21, v21, v23

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_20
    const/16 v21, 0x0

    goto :goto_5

    :cond_21
    const/16 v21, 0x0

    goto :goto_6

    :cond_22
    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->connected:Z

    if-eqz v21, :cond_23

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-nez v21, :cond_23

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    if-eqz v21, :cond_24

    :cond_23
    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "configured is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->configured:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "tethering is started so turning off MTP "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "tethering is started and mtp is not running so returning"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string/jumbo v21, "mtp_usb_conditions_met"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isEDMRestrictionPolicy()Z

    move-result v21

    if-nez v21, :cond_27

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "MTP is blocked by admin case1"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_27

    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->policyStatusSet:Z

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v22, 0x1b

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getPersonaId()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mPersonaMagager:Lcom/samsung/android/knox/SemPersonaManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v21

    if-eqz v21, :cond_2b

    :cond_28
    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "User is Knox!!!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_29

    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->policyStatusSet:Z

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v22, 0x1b

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_29
    :goto_7
    const-string/jumbo v21, "mtp_running_status"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v21, "user_setup_complete"

    const/16 v22, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->ptpEnabled:Z

    if-eqz v21, :cond_2c

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "sending PTP_ICON_ENABLED to stack "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x6f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    :cond_2a
    :goto_8
    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "else part ... so first time!!!"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V

    return-void

    :cond_2b
    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "User is personal"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_2c
    sget-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mtpEnabled:Z

    if-eqz v21, :cond_2a

    const-string/jumbo v21, "ro.csc.sales_code"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getUsbdebugStatus()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2d

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "setupwizard is not finished"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v21

    sput-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v21, :cond_2a

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v22, 0xc

    invoke-virtual/range {v21 .. v22}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const/16 v21, 0x1

    sput-boolean v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    const-string/jumbo v21, "mtp_drive_display"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v21, "dev.kies.drivedisplay"

    const-string/jumbo v22, "0"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "Setting the status to phone Lock"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_2d
    const-string/jumbo v21, "MTPRx"

    const-string/jumbo v22, "sending MTP_ICON_ENABLED to stack"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x6e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;I)V

    goto/16 :goto_8

    :cond_2e
    const-string/jumbo v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_30

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/MtpApplication/MtpReceiver;->initializeSettingsValues(Landroid/content/ContentResolver;)V

    :cond_2f
    :goto_9
    return-void

    :cond_30
    const-string/jumbo v21, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2f

    const-string/jumbo v21, "mtp_running_status"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v21, "MTPRx"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "show popup, cause setupwizard is finished. mtpRunningStatus = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ", popup mode :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_2f

    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    if-eqz v21, :cond_2f

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const v21, 0x10808000

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v21, "com.samsung.android.MtpApplication"

    const-string/jumbo v22, "com.samsung.android.MtpApplication.USBConnection"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v21, "mode"

    sget-object v22, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_2
    sget-object v21, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public usbRemoved()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "mtp_running_status"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "MTPRx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MTP_RUNNING_STATUS = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    sput-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->mFirstTime:Z

    sput-object v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->popupMode:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->updateThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    sget-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, " sendbooster is true, so release booster"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/MtpApplication/MtpReceiver;->setDvfsBooster(Z)V

    :goto_0
    if-ne v7, v2, :cond_1

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "In usbRemoved Status bar enabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "mtp_running_status"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->nousbdriverReset:Z

    if-nez v3, :cond_3

    sput-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->nousbdriverReset:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.intent.action.MTP_FILE_SCAN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "files"

    new-instance v4, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->getMyfilesDBList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "Sending Broadcast finish"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string/jumbo v3, "mtp_usb_conditions_met"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "mtp_usb_connection_status"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "mtp_drive_display"

    invoke-static {v0, v3, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "dev.kies.drivedisplay"

    const-string/jumbo v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "mtp_sync_alive"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "sdcard_launch"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "mtp_event_status"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mtp_open_session"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "dev.mtp.opensession"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-class v6, Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, " sendbooster is false!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "nousbdriverReset case, so do not send MTP_FILE_SCAN "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->nousbdriverReset:Z

    goto :goto_1
.end method
