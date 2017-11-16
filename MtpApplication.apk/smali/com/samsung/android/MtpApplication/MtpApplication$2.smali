.class Lcom/samsung/android/MtpApplication/MtpApplication$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$2;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string/jumbo v1, "MTPAPP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "In handleMessage, noti = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xb

    if-ne v2, v1, :cond_0

    const-string/jumbo v1, "MTPAPP"

    const-string/jumbo v2, "onDestroy of MtpApplication. Status bar enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$2;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/MtpApplication;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    const-string/jumbo v1, "MTPAPP"

    const-string/jumbo v2, "Going to finish the MTP application"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/MtpApplication$2;->this$0:Lcom/samsung/android/MtpApplication/MtpApplication;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/MtpApplication;->finish()V

    :cond_0
    return-void
.end method
