AC_DEFUN([PDNS_CHECK_PANDOC], [
  AC_CHECK_PROG([PANDOC], [pandoc], [yes], [no])

  AS_IF([test "x$PANDOC" = "xno"], [
    AS_IF([test ! -d "$srcdir/docs/html" -o ! -f "$srcdir/docs/pdns_server.1"],
      [AC_MSG_WARN([pandoc is missing, unable to build documentation and manpages.])]
    )
  ])
])