#' Hot-fix an existed function
#'
#' @param fun    original function to hot-fix
#' @param from   character string to replace from
#' @param to     character string to replace to
#'
#' @examples
#'   hello <- function() cat("Hello, world!\n")
#'   hello <- hotfix(hello, "world", "magic")
#'   hello()  # output 'Hello, magic!'
#'
#' @export
hotfix <- function(fun, from, to) {

    function2character <- function(fun) {
        tc <- textConnection("foo", "w")
        dput(fun, tc)
        close(tc)
        foo
    }

    dget(textConnection(gsub(from, to, function2character(fun))))
}
