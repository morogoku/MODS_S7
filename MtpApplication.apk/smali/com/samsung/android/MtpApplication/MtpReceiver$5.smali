.class Lcom/samsung/android/MtpApplication/MtpReceiver$5;
.super Ljava/lang/Object;
.source "MtpReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/MtpApplication/MtpReceiver;->setDvfsBooster(Z)V
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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v0, v2}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap5(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->isAcquired:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mtp_sync_alive"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/MtpReceiver$5;->this$0:Lcom/samsung/android/MtpApplication/MtpReceiver;

    invoke-static {v0, v3}, Lcom/samsung/android/MtpApplication/MtpReceiver;->-wrap5(Lcom/samsung/android/MtpApplication/MtpReceiver;Z)V

    :cond_1
    return-void
.end method
