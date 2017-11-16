.class Lcom/samsung/android/MtpApplication/MtpService$4;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
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

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Inside ACTION_USER_PRESENT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mtp_drive_display"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_2

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "unregistering mtpUserPresentReceiver in if case action_user_present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get2(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-boolean v5, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MtpService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->blockStatusSet:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/samsung/android/MtpApplication/MtpReceiver;->sec_charging:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/MtpApplication/MtpService;->-set0(Lcom/samsung/android/MtpApplication/MtpService;Landroid/mtp/MTPJNIInterface;)Landroid/mtp/MTPJNIInterface;

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get0(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "MTP is already running. Setting the status to unlock"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "mtp_drive_display"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "dev.kies.drivedisplay"

    const-string/jumbo v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "MtpService"

    const-string/jumbo v3, "unregistering mtpUserPresentReceiver in else case action_user_present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->startDBupdate()V

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/MtpApplication/MtpService$4;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v2}, Lcom/samsung/android/MtpApplication/MtpService;->-get2(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sput-boolean v5, Lcom/samsung/android/MtpApplication/MtpService;->userPresentRegistered:Z

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v2, "MtpService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
