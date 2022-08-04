package com.unity3d.player;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.PixelFormat;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.util.Linkify;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.os.Process;
import android.widget.TextView;
import android.widget.Toast;

public class LaunchActivity extends Activity {
    Boolean anInt = false;
    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        SharedPreferences base = getSharedPreferences("base",MODE_PRIVATE);
        anInt = base.getBoolean("isFirstStart",true);

        if (anInt==true){
            final SpannableString s =
                    new SpannableString("\n" +
                            "\n" +
                            "       更新时间：【2022】年【08】月【03】日\n" +
                            "\n" +
                            "       欢迎使用本游戏，在使用本游戏前，请您充分阅读并理解《用户协议》https://blog.csdn.net/ 和《隐私政策》https://blog.csdn.net/ 各条款      " +
                            "\n");
            Linkify.addLinks(s, Linkify.WEB_URLS);
            TextView tv = new TextView(this);
            tv.setMovementMethod(LinkMovementMethod.getInstance());
            tv.setText(s);

            AlertDialog.Builder dialog=new AlertDialog.Builder(LaunchActivity.this);
            dialog.setTitle("               欢迎使用我们的游戏              ");  //设置标题
            //dialog.setMessage("");  //设置内容
            dialog.setView(tv); //设置内容
            dialog.setCancelable(false);  //是否可以取消
            dialog.setNegativeButton("拒绝", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialogInterface, int i) {
                    //Toast toast = Toast.makeText(getApplicationContext(), "您需要同意使用条款和隐私政策才能继续游戏", Toast.LENGTH_SHORT);
                    //toast.setGravity(Gravity.CENTER, 0, 0);
                    //toast.show();
                    // 关闭
                    android.os.Process.killProcess(android.os.Process.myPid());
                }
            });

            dialog.setPositiveButton("同意", new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    SharedPreferences.Editor editor = base.edit();
                    editor.putBoolean("isFirstStart",false);
                    editor.commit();
                    StartGame();
                }
            });

            dialog.show();
        }else{
            StartGame();
        }
    }
    private void StartGame(){
        Intent intent = new Intent();
        intent.setClass(LaunchActivity.this, UnityPlayerActivity.class);
        startActivity(intent);
    }
}