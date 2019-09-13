package fvdemo.wwwwwmw.com.flutter_androidview_test;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

/** FlutterAndroidviewTestPlugin */
public class FlutterAndroidviewTestPlugin implements MethodCallHandler {
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
//    final MethodChannel channel = new MethodChannel(registrar.messenger(), "flutter_androidview_test");
//    channel.setMethodCallHandler(new FlutterAndroidviewTestPlugin());

    registrar.platformViewRegistry().registerViewFactory("plugin.wwwwwmw.flutter/textview",new TextViewFactory(registrar.messenger()) );

  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals("getPlatformVersion")) {
      result.success("Android " + android.os.Build.VERSION.RELEASE);
    } else {
      result.notImplemented();
    }
  }
}
