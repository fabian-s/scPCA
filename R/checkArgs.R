#' Check Arguments passed to the scPCA Function
#'
#' @description Checks whether or not the all arguments in the \code{scPCA}
#'   functions are input properly.
#'
#' @param target The target (experimental) data set, in a standard format such
#'  as a \code{data.frame} or \code{matrix}.
#' @param background The background data set, in a standard format such as a
#'  \code{data.frame} or \code{matrix}.
#' @param center A \code{logical} indicating whether the target and background
#'  data sets should be centered to mean zero.
#' @param scale A \code{logical} indicating whether the target and background
#'  data sets should be scaled to unit variance.
#' @param n_eigen A \code{numeric} indicating the number of eigenvectors to be
#'  computed.
#' @param contrasts A \code{numeric} vector of the contrastive parameters.
#' @param penalties A \code{numeric} vector of the penalty terms.
#' @param clust_method A \code{character} specifying the clustering method to
#'  use for choosing the optimal constrastive parameter. Currently, this is
#'  limited to either k-means, partitioning around medoids (PAM), and
#'  hierarchical clustering. The default is k-means clustering.
#' @param linkage_method A \code{character} specifying the agglomerative
#'  linkage method to be used if \code{clust_method = "hclust"}. The options
#'  are \code{ward.D2}, \code{single}, \code{complete}, \code{average},
#'  \code{mcquitty}, \code{median}, and \code{centroid}. The default is
#'  \code{complete}.
#'
#' @importFrom methods is
#' @importFrom assertthat assert_that see_if is.count is.flag
#' @importFrom tibble is_tibble
#'
#' @keywords internal
#'
#' @return Whether all argument conditions are satisfied
checkArgs <- function(target, background, center, scale, n_eigen, contrasts,
                      penalties, clust_method, linkage_method) {
  # assert that the target and background data frames are of the right class
  assertthat::assert_that(
    tibble::is_tibble(target) ||
      is.data.frame(target) ||
      is.matrix(target) ||
      is(target, "dgeMatrix") ||
      is(target, "dgCMatrix")
  )
  assertthat::assert_that(
    tibble::is_tibble(background) ||
      is.data.frame(background) ||
      is.matrix(background) ||
      is(background, "dgeMatrix") ||
      is(background, "dgCMatrix")
  )

  # assert that target and background have the same number of variables
  assertthat::assert_that(ncol(target) == ncol(background))

  # check the centering and scaling arguments
  assertthat::assert_that(assertthat::is.flag(center))
  assertthat::assert_that(assertthat::is.flag(scale))

  # check the number of eigenvectors to compute
  assertthat::assert_that(assertthat::is.count(n_eigen))
  assertthat::assert_that(n_eigen <= ncol(target))

  # check the contrastive parameters
  if (assertthat::see_if(!missing(contrasts))) {
    assertthat::assert_that(length(contrasts) > 0)
    assertthat::assert_that(is.numeric(contrasts))
    assertthat::assert_that(all(contrasts > 0))
  }

  # check penalty terms
  if (assertthat::see_if(!is.null(penalties))) {
    assertthat::assert_that(length(penalties) > 0)
    assertthat::assert_that(is.numeric(penalties))
    assertthat::assert_that(all(penalties >= 0))
  }

  # check that the linkage method is not ward.D is not selected
  if (clust_method == "hclust") {
    assertthat::assert_that(linkage_method != "ward.D")
  }
}
