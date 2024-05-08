#############################
### 0. Create Directories ###
#############################

# create data directory
data_dir <- dir.create("data")

# designate subdirectories
data_subdirectories <- c("aa_exploration_data",
                         "a_raw_data",
                         "b_intermediate_data",
                         "c_submodel_data",
                         "d_suitability_data",
                         "e_rank_data",
                         "f_sensitivity_data",
                         "g_uncertainty_data",
                         "zz_miscellaneous")

# designate submodel directories
data_submodels <- c("boundaries",
                    "constraints",
                    "geology",
                    "fisheries",
                    "industry_navigation",
                    "logistics",
                    "natural_cultural_resources",
                    "national_security")

#####################################

# create sub-directories within data directory
for (i in 1:length(data_subdirectories)){
  subdirectories <- dir.create(file.path("data", data_subdirectories[i]))
}

# create sub-directories within data directory
for (i in 1:length(data_submodels)){
  subdirectories <- dir.create(file.path("data/aa_exploration_data", data_submodels[i]))
}

# create sub-directories within data directory
for (i in 1:length(data_submodels)){
  subdirectories <- dir.create(file.path("data/a_raw_data", data_submodels[i]))
}

#####################################

# create code directory
code_dir <- dir.create("code")

#####################################

# create figure directory
figure_dir <- dir.create("figure")

#####################################
#####################################

# delete directory (if necessary)
### ***Note: change directory path for desired directory
#unlink("data/a_raw_data", recursive = T)
