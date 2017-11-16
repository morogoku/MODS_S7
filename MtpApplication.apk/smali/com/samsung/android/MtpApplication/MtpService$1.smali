.class Lcom/samsung/android/MtpApplication/MtpService$1;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpService$1;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/16 v9, 0xcd

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "MtpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "In MTPAPP onReceive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.android.knox.intent.action.MTP_DISABLED_INTERNAL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mtp_running_status"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v8, v3, :cond_0

    const-string/jumbo v3, "MtpService"

    const-string/jumbo v4, "In MTPAPP inside disable drive in mtp disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->disableDrive(Landroid/content/Context;)Z

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpService$1;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v3, p1}, Lcom/samsung/android/MtpApplication/MtpService;->-wrap1(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v9, v2, Landroid/os/Message;->what:I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mtp_running_status"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v8, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpService$1;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v3}, Lcom/samsung/android/MtpApplication/MtpService;->-get1(Lcom/samsung/android/MtpApplication/MtpService;)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_2

    const-string/jumbo v3, "MtpService"

    const-string/jumbo v4, " dpm is null. So return"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->semGetAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "MtpService"

    const-string/jumbo v4, "In MTPAPP inside disable drive in policy state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->disableDrive(Landroid/content/Context;)Z

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpService$1;->this$0:Lcom/samsung/android/MtpApplication/MtpService;

    invoke-static {v3, p1}, Lcom/samsung/android/MtpApplication/MtpService;->-wrap1(Lcom/samsung/android/MtpApplication/MtpService;Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v9, v2, Landroid/os/Message;->what:I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpService;->mtpServiceHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
