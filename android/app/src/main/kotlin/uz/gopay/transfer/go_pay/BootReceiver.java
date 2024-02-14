package uz.gopay.transfer.go_pay;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class BootReceiver extends BroadcastReceiver {
    @Override
    public void onReceive(Context context, Intent intent) {
        if (Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())) {

            Intent i = new Intent(context, RemoteFirebaseService.class);
            context.startService(i);
        }
    }
}