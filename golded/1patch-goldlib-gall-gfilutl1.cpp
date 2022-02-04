--- goldlib/gall/gfilutl1.cpp.orig	2006-04-27 10:35:19.000000000 +0400
+++ goldlib/gall/gfilutl1.cpp	2008-07-18 11:49:38.000000000 +0400
@@ -29,7 +29,7 @@
 #include <gstrall.h>
 #include <gfilutil.h>
 #include <gfile.h>
-
+#include <stdlib.h>
 #if defined(__MINGW32__) || defined(_MSC_VER)
 #include <sys/utime.h>
 #else
