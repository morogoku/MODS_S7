.class Lcom/samsung/android/MtpApplication/MtpReceiver$1;
.super Landroid/os/UEventObserver;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v1, "USB_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "MTPRx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state from USB_STATE event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap0(Lcom/samsung/android/MtpApplication/MtpReceiver;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "stop observing and calling usbRemoved "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-get3(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/os/UEventObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "ignore this event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "CONFIGURED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput v4, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/MtpApplication/MtpReceiver;->gadgetReset:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "MTPRx"

    const-string/jumbo v2, "CONNECTED has come after switching the user call usbRemoved "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-get3(Lcom/samsung/android/MtpApplication/MtpReceiver;)Landroid/os/UEventObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UEventObserver;->stopObserving()V

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpReceiver;->usbRemoved()V

    goto :goto_0
.end method
