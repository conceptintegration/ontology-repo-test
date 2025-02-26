# 🏦 Ontology repository

This repository hosts the ontologies available on the [Sartori]() website. Each folder contains an ontology.

## Submit your own ontology

We accept new ontologies! To be included, you need to prepare two .csv files: one with metadata and one with the concepts/topics.

## Metadata CSV

See an [example CSV file]().

Required columns:

- `organization`: The parent organization of this ontology.

- `name`: The name of the ontology.

- `label`: A label of the form `ORG-NAME`, e.g., `CCP-FACET` or `CCP-HIER` (max. 16 characters).

- `description`: A description of the ontology.

- `citation`: Citation for the ontology as a BibTex entry.

- `version`: The version number. Must be sequential integers.

Other accepted columns:

- `version_notes`: 

## Concepts/topics CSV

See an [example CSV file]().

Required columns:

- `key`: a unique key for the concept

- `label`: a short label for the concept

- `description`: a longer description for the concept

Other accepted columns:

- `example`: a segment that exemplifies the concept

- `parent_category`: for hierarchical ontologies, the parent category or categories of the concept. 

- `notes`: any note relevant to the concept (128-character limit)

- `keywords`: concepts that are highly related, perhaps as hyponymns, hypernymns, or otherwise related.

### [Click here to submit your ontology!](https://github.com/conceptintegration/ontology-repo-test/issues/new/choose) (GitHub account needed)
