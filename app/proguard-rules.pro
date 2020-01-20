# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /home/dnld/Android/Sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep fullSizeOptions here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# [custom rules begin]
-verbose
-renamesourcefileattribute SourceFile

-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,*Annotation*,EnclosingMethod,AnnotationDefault,JavascriptInterface
-keepattributes RuntimeVisibleAnnotations
-keepattributes RuntimeInvisibleAnnotations
-keepattributes RuntimeVisibleParameterAnnotations
-keepattributes RuntimeInvisibleParameterAnnotations

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.content.Context {
   public void *(android.view.View);
   public void *(android.view.MenuItem);
}

-keep class com.google.** { *; }
-dontwarn com.google.**
-dontwarn com.squareup.picasso.**
-dontwarn com.viewpagerindicator.**

-keepclasseswithmembernames class * {
  native <methods>;
}

# Parcelable implementations are accessed by introspection
-keepclassmembers class * implements android.os.Parcelable {*;}
-keep class * implements android.os.Parcelable {*;}
-keepnames class * implements android.os.Parcelable {*;}

-keep @JvmOverloads class * {
  <init>(...);
  *;
}

# [custom rules end]



-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

-keepclasseswithmembernames class * {
    @butterknife.* <fields>;
}

-keepclasseswithmembernames class * {
    @butterknife.* <methods>;
}

-keepnames class * { @butterknife.Bind *;}

-dontwarn okio.**



# [custom rules begin]
-verbose
-renamesourcefileattribute SourceFile

-keepattributes Exceptions,InnerClasses,Signature,Deprecated,SourceFile,LineNumberTable,*Annotation*,EnclosingMethod,AnnotationDefault,JavascriptInterface
-keepattributes RuntimeVisibleAnnotations
-keepattributes RuntimeInvisibleAnnotations
-keepattributes RuntimeVisibleParameterAnnotations
-keepattributes RuntimeInvisibleParameterAnnotations

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.content.Context {
   public void *(android.view.View);
   public void *(android.view.MenuItem);
}

-keep class com.google.** { *; }
-dontwarn com.google.**
-dontwarn com.squareup.picasso.**
-dontwarn com.viewpagerindicator.**

-keepclasseswithmembernames class * {
  native <methods>;
}

# Parcelable implementations are accessed by introspection
-keepclassmembers class * implements android.os.Parcelable {*;}
-keep class * implements android.os.Parcelable {*;}
-keepnames class * implements android.os.Parcelable {*;}

-keep @JvmOverloads class * {
  <init>(...);
  *;
}

# [custom rules end]
