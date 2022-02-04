--- goldlib/gall/gdbgtrk.cpp.orig	2005-10-07 16:41:11.000000000 +0400
+++ goldlib/gall/gdbgtrk.cpp	2008-07-18 11:32:23.000000000 +0400
@@ -28,8 +28,8 @@
 #include <gdbgtrk.h>
 #include <gmemdbg.h>
 #include <glog.h>
-
-
+#include <malloc.h>
+#include <stdlib.h>
 //  ------------------------------------------------------------------
 
 #if defined(GFTRK_ENABLE)
