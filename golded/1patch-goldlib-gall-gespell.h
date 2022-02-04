--- goldlib/gall/gespell.h.orig	2006-11-25 14:44:40.000000000 +0300
+++ goldlib/gall/gespell.h	2008-07-18 11:44:13.000000000 +0400
@@ -39,7 +39,7 @@
 #define PATH_MAX _MAX_PATH
 #endif
 #endif
-
+#define PATH_MAX 256
 const uint SCHECKET_TYPE_UNKNOWN = 0;
 const uint SCHECKET_TYPE_MSSPELL = 1;
 const uint SCHECKET_TYPE_MYSPELL = 2;
