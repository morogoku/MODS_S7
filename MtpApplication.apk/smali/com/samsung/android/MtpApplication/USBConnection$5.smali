.class Lcom/samsung/android/MtpApplication/USBConnection$5;
.super Ljava/lang/Object;
.source "USBConnection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/MtpApplication/USBConnection;->showDiaglog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/MtpApplication/USBConnection;


# direct methods
.method constructor <init>(Lcom/samsung/android/MtpApplication/USBConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/USBConnection$5;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v1, "MTPUSBConnection"

    const-string/jumbo v2, "select Other USB options"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/USBConnection$5;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iget-object v1, v1, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.deviceinfo.UsbModeChooserActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/MtpApplication/USBConnection$5;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    invoke-virtual {v1}, Lcom/samsung/android/MtpApplication/USBConnection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
