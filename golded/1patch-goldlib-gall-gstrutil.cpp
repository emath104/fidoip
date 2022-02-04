--- goldlib/gall/gstrutil.cpp.orig	2007-02-02 10:02:38.000000000 +0300
+++ goldlib/gall/gstrutil.cpp	2008-07-18 12:47:17.000000000 +0400
@@ -23,14 +23,14 @@
 //  Based on source from the CXL library by Mike Smedley.
 //  String manipulation.
 //  ------------------------------------------------------------------
-
+#include <string.h>
 #include <gctype.h>
 #include <cstdio>
 #include <stdarg.h>
 #include <gstrall.h>
 #include <glog.h>
 #include <gdbgerr.h>
-
+#include <stdlib.h>
 extern glog LOG;
 
 
