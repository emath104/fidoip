--- goldlib/gall/gmemdbg.cpp.orig	2005-10-28 14:33:43.000000000 +0400
+++ goldlib/gall/gmemdbg.cpp	2008-07-18 12:17:23.000000000 +0400
@@ -25,14 +25,14 @@
 //  Memory management routines with debugging features.
 //  Based on free code from SNIPPETS 9404 by Walter Bright.
 //  ------------------------------------------------------------------
-
+#include <string.h>
 #include <climits>
 #include <gdbgerr.h>
 #include <gmemdbg.h>
 #include <glog.h>
 #include <gmemall.h>
-
-
+#include <malloc.h>
+#include <stdlib.h>
 //  ------------------------------------------------------------------
 //  Global vars
 
