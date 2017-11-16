.class Lcom/samsung/android/MtpApplication/USBConnection$7;
.super Ljava/lang/Object;
.source "USBConnection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/MtpApplication/USBConnection$7;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "MTPUSBConnection"

    const-string/jumbo v1, "select mtp mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "Allow"

    invoke-static {v0}, Lcom/samsung/android/MtpApplication/USBConnection;->-set0(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/MtpApplication/USBConnection$7;->this$0:Lcom/samsung/android/MtpApplication/USBConnection;

    iget-object v0, v0, Lcom/samsung/android/MtpApplication/USBConnection;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method
