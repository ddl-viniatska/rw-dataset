library(tidyverse)

dir_write_dataset = '/mnt/data/GB-RW'
dir_read_dataset = '/mnt/data/snapshots/GB-RW/diabetes'
dir_fullpath_file = file.path(dir_read_dataset, "diabetes.csv")


df_diabetes = read.csv(dir_fullpath_file)

target = "Outcome"
df_diabetes_mean_features = as.data.frame.list(colMeans(df_diabetes)) %>% select(-Outcome)

df_diabetes$Outcome = as.factor(df_diabetes$Outcome)

model <- glm(Outcome ~ ., data=df_diabetes, family=binomial)

#predict(model, newdata=df_diabetes_mean_features, type="response")

saveRDS(model, file.path(dir_write_dataset, "model.rds"))
write.csv(df_diabetes_mean_features, file.path(dir_write_dataset, "diabetes_mean.csv"), row.names=FALSE)
