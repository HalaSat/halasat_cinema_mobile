package net.halasat.cinema;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;

import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    String CHANNEL_ID = "mxplayer";

    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
      new MethodChannel(getFlutterView(), CHANNEL_ID).setMethodCallHandler(
              (call, result) -> {
                  if (call.method.equals("launch_player")) {
                      Intent mxIntent = new Intent(Intent.ACTION_VIEW);
                      Uri videoUrl = Uri.parse(call.argument("url"));
                      String subUrlStr = call.argument("subtitlesUrl");
                      String title = call.argument("title");

                      mxIntent.setDataAndType(videoUrl, "application/x-mpegURL");
                      mxIntent.setPackage("com.mxtech.videoplayer.ad");
                      mxIntent.putExtra("title", title);
                      if (subUrlStr != null) {
                          Uri subUrl = Uri.parse(subUrlStr);
                          Parcelable[] subParcels = {subUrl};
                          String[] subNames = {title};
                          mxIntent.putExtra("subs", subParcels);
                          mxIntent.putExtra("subs.enable", subParcels);
                          mxIntent.putExtra("subs.name", subNames);
                      }
                      startActivity(mxIntent);
                  }
              });

  }
}
