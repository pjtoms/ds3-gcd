##
## Getting And Cleaning Data - Coursera Data Science Course 3
## Project: Tidy Data
##
## Description:
##    General setup script for the project. The main processing is in
##    script run_analysis.Rmd which is called/rendered by this script.
##    The output of the script is in run_analysis.html.
##
## To Use:
##    Download the project from GitHub where you found this script.
##    Extract to a local directory.
##    Open this script in your RStudio session.
##    Set your RStudio session working directory to this scripts location.
##    Source this script, run_analysis.R, in RStudio.
##
## Output:
##    Tidy'd data in uciMeanStdDevTidy.txt and uciMeanStdDevTidy.csv files.
##    Formatted run file in run_analysis.html.
##    Generated Code Book in Codebook.md.
##
## Notes:
##    Trying some of the markdown/rmarkdown stuff for generating the
##    required documentation.
##
## Development Environment:
##    Platform:  RStudio on macOS Sierra
##    R version: R version 3.3.2 (2016-10-31)
##
## Author:
##    pjtx4657 Patrick (Pat) T...
##

message("\nINFO: Begin - Getting And Cleaning Data - Coursera Data Science Course 3: Tidy Data")

# Check the environment and if missing a package error out. "quietly" to cut down on messages.
if (!require(envDocument) || !require(markdown) || !require(rmarkdown) || !require(knitr) ||
    !require(data.table, quietly = TRUE)) {
  message("ERROR: Local environment issues, please install required packages. See previous messages")
  stop("Environment issues found.")
}

# Check that we're in the proper R Session directory.
scriptDirectory <- dirname(getScriptPath())
cwd <- getwd()
if (cwd != scriptDirectory) {
  message("ERROR: Local environment issues, please change your R session directory to: ", scriptDirectory)
  stop("Environment issues found.")
}

#
# Run the R Markdown that does the work and generate an HTML summary.
#
message("INFO: Run and render the main script - run_analysis.Rmd")
ptm <- proc.time()
render("./run_analysis.Rmd", output_format="html_document", quiet = TRUE)
total_ptm <- proc.time() - ptm


# If an interactive session is running this script then show the output.
if (interactive()) {
  browseURL("run_analysis.html")
}

# And we're done.
message("INFO: End - Getting And Cleaning Data - Coursera Data Science Course 3: Tidy Data")
if (verboseOn) {
  message("\nINFO: Processing Time run_analysis.Rmd - ", sprintf("user: %.3f, system: %.3f, total: %.3f (secs)\n", total_ptm[1], total_ptm[2], total_ptm[3]))
}
