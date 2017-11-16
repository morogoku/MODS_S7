.class Lcom/samsung/android/MtpApplication/MtpReceiver$2;
.super Landroid/os/Handler;
.source "MtpReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/MtpReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/MtpReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/16 v12, 0x15

    const/16 v11, 0xe

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string/jumbo v5, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notification from stack "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v6, v5, :cond_1

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mtp_sync_alive"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_0

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSyncFinished()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-eq v6, v5, :cond_2

    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v6, v5, :cond_4

    :cond_2
    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mtp_sync_alive"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Inside Syncronising"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v5, v8}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap5(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V

    :cond_3
    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mtp_sync_alive"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput-boolean v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mtp_sync_alive"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_5

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v5, v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    const/16 v6, 0xcc

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_4
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xa

    if-eq v6, v5, :cond_2

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xcc

    if-ne v6, v5, :cond_8

    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    if-nez v5, :cond_7

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "mtp_sync_alive"

    invoke-static {v0, v5, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->finishSync()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v5, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Inside Syncronising"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v5, v8}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap5(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V

    :cond_6
    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mtp_sync_alive"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/high16 v5, 0x10800000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.MtpApplication"

    const-string/jumbo v6, "com.samsung.android.MtpApplication.MtpApplication"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "Activity not found!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->isSyncFinished()V

    goto/16 :goto_0

    :cond_8
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xf

    if-ne v6, v5, :cond_9

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "Condition matched"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mtp_sync_alive"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_0

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "Booster matched. Calling for boosting again."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v5, v8}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap5(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V

    goto/16 :goto_0

    :cond_9
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xcd

    if-eq v6, v5, :cond_a

    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0xce

    if-ne v6, v5, :cond_b

    :cond_a
    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "mtp_sync_alive"

    invoke-static {v0, v5, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "USB removed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    goto/16 :goto_0

    :cond_b
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v11, v5, :cond_12

    sput-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    sput-boolean v8, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    const-string/jumbo v5, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Open session has come  remove the  Message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v5, v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mtp_open_session"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "dev.mtp.opensession"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap1(Lcom/samsung/android/MtpApplication/MtpReceiver;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enable_mtp_settings"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v8, :cond_e

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    if-eqz v5, :cond_c

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->PCguid:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/samsung/android/MtpApplication/MtpMediaDBManager;->isExistGUID(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-eqz v5, :cond_e

    :cond_c
    :goto_1
    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "enable_mtp_settings"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    sget-object v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-set1(Lcom/samsung/android/MtpApplication/MtpReceiver;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-get0(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    if-nez v5, :cond_d

    iget-object v6, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "device_policy"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v6, v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-set0(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/app/admin/DevicePolicyManager;)Landroid/app/admin/DevicePolicyManager;

    :cond_d
    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->policyStatusSet:Z

    if-eqz v5, :cond_10

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f040015

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Phone is already authorized. enableMtpSettings : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->lockStatusSet:Z

    if-nez v5, :cond_f

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v5, :cond_f

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "Phone is unlocked."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "mtp_drive_display"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v5, "dev.kies.drivedisplay"

    const-string/jumbo v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "dev.kies.drivedisplay.trust"

    const-string/jumbo v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "Phone is authorized, but secure lock."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "dev.kies.drivedisplay.trust"

    const-string/jumbo v6, "2"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-get0(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/app/admin/DevicePolicyManager;->semIsPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-get1(Lcom/samsung/android/MtpApplication/MtpReceiver;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getRecoveryScreenLocked(I)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "phone is recovery status, so do not showing MTP trust pop-up"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-nez v5, :cond_0

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "Show popup for trust mtp"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const v5, 0x10808000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.MtpApplication"

    const-string/jumbo v6, "com.samsung.android.MtpApplication.USBConnection"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "mode"

    const-string/jumbo v6, "TRUSTMTP"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1
    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_12
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v12, v5, :cond_0

    sput-boolean v9, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    const-string/jumbo v5, "MTPRx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Read Error Came "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/MtpApplication/MtpReceiver;->isConnectedwithdriver:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v5, v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v5, "MTPRx"

    const-string/jumbo v6, "Read Error Came so calling usbRemoved()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    goto/16 :goto_0
.end method
