# IOF Core Patterns Compendium

⚠️ **Warning**: This project is synced by Overleaf. Please do not change the folder structure or run the *tex* files with local LaTex compilers. 

## Overview
Welcome to the IOF Core Patterns Compendium repository. This project is for developing a LaTex document that is a collection of reusable and well-documented ontology patterns for industrial data modeling, based on the IOF Core vocabulary. These patterns aim to assist data modelers and developers in mapping legacy data and addressing common industrial knowledge graph scenarios using IOF Core principles.

## Purpose
The purpose of this repository is to: 

* Develop small, repetitive fragments of a knowledge graph * *(patterns) for real-life data modeling.
* Provide a practical guide for implementing IOF Core in industrial scenarios.
* Enable developers to create consistent, reusable, and validated data mappings using IOF Core.

## How to Contribute
Please join IOF Core Pattern subgroup by sending a request to IOF Core chairs:
**[Jim Logan](mailto:jlogan@ontogenesis-solutions.com)**, **[Milos Drobnjakovic](mailto:MDrobnjakovic1995@gmail.com)**, or **[Arkopaul Sarkar](mailto:arkopaul@gmail.com)**

### Project setup
1. **Set up folders in Overleaf**:
   - Open the Overleaf project.
   - Create a new folder for your scenario.
   - Under the scenario folder, create two subfolders named `image` and `data`.

2. **Create a .tex file**:
   - Inside your scenario folder, create a new file named `<scenario-name>.tex`.

3. **Copy the Scenario Template**:
   - Copy the `Scenario Template` from **Appendix B** into the new `.tex` file.
   - Edit the file to include your scenario name.

4. **Sync Overleaf with GitHub**:
   - Go to the **GitHub** option in the Overleaf **Menu**.
   - Press the **Push Overleaf changes to GitHub** button to sync your changes.

5. **Clone or pull the Git repository**:
   - Clone the repository or pull the latest changes into your local Git repository.
   - Navigate to your scenario folder. You will find the `image` and `data` subfolders synced from Overleaf.

6. **Develop content locally**:
   - Use the `image` folder for diagrams and the `data` folder for queries, datasets, or other files that cannot be developed directly in Overleaf.

Your project setup is complete!

## Task Allocation

| **Scenario**                      | **Assigned To**        | **Status**       | **Reviewed By**       |
|-----------------------------------|------------------------|------------------|------------------------|
| Change of object's location over time | Milos Drobnjakovic     | In Progress  | [Reviewer Name]        |
| Algorithm execution               | Arkopaul Sarkar        | In Progress      | [Reviewer Name]        |
| Assign measurement value with unit| All                    | Assigned         | [Reviewer Name]        |

---

### Task Legend:
- **Assigned**: Task has been assigned but not started.
- **In Progress**: Work is currently being done on this task.
- **Completed**: Task has been completed but not reviewed.
- **Reviewed**: Task is a reviewed.
