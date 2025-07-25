# Generate README.md files from metadata.csv files ----

fps_metadata <- list.files(pattern = "metadata\\.csv$", recursive = T)

for (fp in fps_metadata){
  md <- read.csv(fp)
  colnames(md) <- stringr::str_to_lower(colnames(md))

  if (nrow(md) == 1L){
    out_lines <- c(
      sprintf("# %s - %s (%s)", md$organization, md$name, md$label),
      "",
      sprintf("- **Description**: %s", md$description),
      "",
      sprintf("- **Citation**: %s", md$citation),
      "",
      sprintf("- **Version (in the repo)**: %s", md$version),
      "---",
      "(This `README.md` file is automatically generated from the `metadata.csv` file. Edit that one!)"
    )
  } else if (nrow(md) > 1L) {
    out_lines <- c(
      sprintf("# %s - %s (%s)", unique(md$organization), unique(md$nameone), unique(md$label)),
      "",
      sprintf("- **Description**: %s", unique(md$description)),
      "",
      sprintf("- **Citation**: %s", md$citation),
      "",
      sprintf("- **Version (in the repo)**: %s", unique(md$version)),
      "---",
      "(This `README.md` file is automatically generated from the `metadata.csv` file. Edit that one!)"
    )
  }
  writeLines(out_lines, sub("metadata\\.csv", "README.md", fp))
}