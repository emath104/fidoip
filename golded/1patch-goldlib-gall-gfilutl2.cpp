--- goldlib/gall/gfilutl2.cpp.orig	2006-01-18 11:15:40.000000000 +0300
+++ goldlib/gall/gfilutl2.cpp	2008-07-18 12:00:06.000000000 +0400
@@ -32,8 +32,8 @@
 #ifdef __WIN32__
 #include <windows.h>
 #endif
-
-
+#include <stdlib.h>
+#include <string.h>
 //  ------------------------------------------------------------------
 
 std::string& AddBackslash(std::string& p) {
