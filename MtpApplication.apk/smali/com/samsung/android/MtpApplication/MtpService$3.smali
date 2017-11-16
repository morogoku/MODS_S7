.class Lcom/samsung/android/MtpApplication/MtpService$3;
.super Landroid/content/BroadcastReceiver;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpService;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/MtpService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x69

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpService;->isUsbDisconnected()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In MTPAPP onReceive:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "SD card and Private already available. just return"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    if-nez v2, :cond_4

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getExternalStorageStatus()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "In SDCard add case"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "mtp_running_status"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_3

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "sd card added when MTP running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    const-string/jumbo v2, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Top screen is MTP and MtpReceiver.sdCardExists value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/MtpApplication/MtpService;->-set0(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "sending sdcard connected noti to stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    const/16 v3, 0x6a

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    if-nez v2, :cond_3

    invoke-static {p1}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, " Private added case"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "mtp_running_status"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_3

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "Private added when MTP running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    const-string/jumbo v2, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Top screen is MTP and PrivatemodeSet value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/MtpApplication/MtpService;->-set0(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "sending Private connected noti to stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "media  ACTION_MEDIA_UNMOUNTED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/samsung/android/privatemode/PrivateModeManager;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "privatebox is removed "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->privatemodeSet:Z

    const-string/jumbo v2, "mtp_running_status"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_6

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "Private removed during MTP session"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/MtpApplication/MtpService;->-set0(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "sending Private disconnected noti to stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    const/16 v3, 0x73

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->getExternalStorageStatus()Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "MMC is disconnected in ACTION_MEDIA_UNMOUNTED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    const-string/jumbo v2, "sdcard_launch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "mtp_running_status"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_6

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "Top screen is MTP"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/MtpApplication/MtpService;->-set0(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "sending MMC disconnected noti to stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto :goto_1

    :cond_8
    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "SD card/Private already removed. just return"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string/jumbo v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "MMC is disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->sdCardExists:Z

    const-string/jumbo v2, "sdcard_launch"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "mtp_running_status"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_6

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "Top screen is MTP"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/MtpApplication/MtpService;->-set0(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "sending MMC disconnected noti to stack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$3;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "SD card/Private already removed. just return"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
