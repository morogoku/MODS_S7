.class Lcom/samsung/android/MtpApplication/MtpReceiver$3;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, " Default case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "calling native method"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v4, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v4, v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v3, v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "Checking the driver time out"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v3, v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap3(Lcom/samsung/android/MtpApplication/MtpReceiver;I)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "called native method"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-nez v3, :cond_1

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    :cond_1
    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v3, v6}, Landroid/mtp/MTPJNIInterface;->setMediaScannerStatus(I)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "MTP can be launched"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "context is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/16 v6, 0xca

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap4(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;I)V

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "restarting MTP"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-nez v3, :cond_3

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "mContext is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap2(Lcom/samsung/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "calling native method"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v4, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v4, v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v4, 0x6c

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "calling native method"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v4, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v4, v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v4, 0x6f

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "calling native method"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v4, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v4, v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v4, 0x6e

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :sswitch_6
    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "calling native method"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v4, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$3;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    iget-object v4, v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_0

    :sswitch_7
    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {v3}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-set2(Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    const-string/jumbo v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-get2()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/FactoryTest;->isFactoryMode(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "DRIVER_TIME_OUT 60s lapsed, but Factory mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/MtpApplication/MtpService;->isUsbDisconnected()Z

    move-result v3

    if-eqz v3, :cond_5

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "DRIVER_TIME_OUT 60s lapsed, but do not started activity for popup."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    sget-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->usb_data_unlock:Z

    if-nez v3, :cond_6

    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "DRIVER_TIME_OUT 60s lapsed, but this case is usb_data_unlock is false case."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-boolean v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "1"

    sget-object v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->boot_completed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "DRIVER_TIME_OUT 60s lapsed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "still no open session command from host, so toast"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10800000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.MtpApplication"

    const-string/jumbo v4, "com.samsung.android.MtpApplication.USBConnection"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "mode"

    const-string/jumbo v4, "TIMEOUT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    sget-object v3, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "started activity for popup"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-boolean v6, Lcom/samsung/android/MtpApplication/MtpReceiver;->displayDriverPopup:Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "MTPRx"

    const-string/jumbo v4, "exception in starting activity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v3, "MTPRx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_7
        0x6c -> :sswitch_3
        0x6d -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_4
        0xc9 -> :sswitch_1
        0xca -> :sswitch_0
        0xcb -> :sswitch_2
    .end sparse-switch
.end method
