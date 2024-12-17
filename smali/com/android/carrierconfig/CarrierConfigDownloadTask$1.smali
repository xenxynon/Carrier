.class Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;
.super Ljava/lang/Object;
.source "CarrierConfigDownloadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/carrierconfig/CarrierConfigDownloadTask;->downloadFileFromServer(Ljava/net/URL;Landroid/app/job/JobParameters;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/carrierconfig/CarrierConfigDownloadTask;

.field final synthetic val$carrierUpdateVersion:I

.field final synthetic val$params:Landroid/app/job/JobParameters;

.field final synthetic val$url:Ljava/net/URL;


# direct methods
.method constructor <init>(Lcom/android/carrierconfig/CarrierConfigDownloadTask;Ljava/net/URL;Landroid/app/job/JobParameters;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->this$0:Lcom/android/carrierconfig/CarrierConfigDownloadTask;

    iput-object p2, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->val$url:Ljava/net/URL;

    iput-object p3, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->val$params:Landroid/app/job/JobParameters;

    iput p4, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->val$carrierUpdateVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "CarrierConfigDownloadTask"

    .line 36
    :try_start_0
    iget-object v1, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->this$0:Lcom/android/carrierconfig/CarrierConfigDownloadTask;

    iget-object v2, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->val$url:Ljava/net/URL;

    invoke-virtual {v1, v2}, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->downloadFile(Ljava/net/URL;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Download success"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->this$0:Lcom/android/carrierconfig/CarrierConfigDownloadTask;

    invoke-static {v1}, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->-$$Nest$fgetcontext(Lcom/android/carrierconfig/CarrierConfigDownloadTask;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/carrierconfig/PeriodicJobService;->cancelDownloadJob(Landroid/content/Context;)V

    .line 39
    iget-object v1, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->this$0:Lcom/android/carrierconfig/CarrierConfigDownloadTask;

    invoke-static {v1}, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->-$$Nest$fgetjobService(Lcom/android/carrierconfig/CarrierConfigDownloadTask;)Landroid/app/job/JobService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->val$params:Landroid/app/job/JobParameters;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 40
    iget-object v1, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->this$0:Lcom/android/carrierconfig/CarrierConfigDownloadTask;

    invoke-static {v1}, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->-$$Nest$fgetcontext(Lcom/android/carrierconfig/CarrierConfigDownloadTask;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->val$carrierUpdateVersion:I

    invoke-static {v1, v2}, Lcom/android/carrierconfig/OnlineCarrierVersion;->setLastVersion(Landroid/content/Context;I)V

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.carrier.action.ONLINE_XML_DOWNLOADED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "version"

    .line 42
    iget v3, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->val$carrierUpdateVersion:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    iget-object p0, p0, Lcom/android/carrierconfig/CarrierConfigDownloadTask$1;->this$0:Lcom/android/carrierconfig/CarrierConfigDownloadTask;

    invoke-static {p0}, Lcom/android/carrierconfig/CarrierConfigDownloadTask;->-$$Nest$fgetcontext(Lcom/android/carrierconfig/CarrierConfigDownloadTask;)Landroid/content/Context;

    move-result-object p0

    const-string v2, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download carrier online xml failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
