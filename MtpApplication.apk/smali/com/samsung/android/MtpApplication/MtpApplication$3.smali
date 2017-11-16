.class Lcom/samsung/android/MtpApplication/MtpApplication$3;
.super Landroid/content/BroadcastReceiver;
.source "MtpApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/MtpApplication/MtpApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/MtpApplication;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/MtpApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "MTPAPP"

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

    if-eqz v0, :cond_0

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "MTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "battPlugged Type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "Plug Type is coming zeor so finishing service: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-virtual {v3}, Lcom/samsung/android/MtpApplication/MtpApplication;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "com.samsung.android.END_MTP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const-string/jumbo v3, "MTP"

    const-string/jumbo v4, "END key pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v3, v3, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mtp_usb_connection_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v3, v3, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "media_player_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v3, v3, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mtp_usb_conditions_met"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v3, v3, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "mtp_running_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v3, "com.samsung.android.END_MTP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpApplication$3;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v3, v3, Lcom/samsung/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v4, "end_key_press"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    const-string/jumbo v3, "MTPAPP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "End Key pressed= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.MTP_FILE_SCAN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v3, "MTPAPP"

    const-string/jumbo v4, "Sending Broadcast"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v4, 0x6b

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0
.end method
