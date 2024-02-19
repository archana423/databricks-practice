-- Databricks notebook source
DROP TABLE if exists EmpWRTsalary;
CREATE TABLE EmpWRTsalary USING CSV OPTIONS (path "/FileStore/tables/EmpWRTsalary.csv", header "true")

-- COMMAND ----------

SELECT gender, avg(salary) as Average_Salary FROM EmpWRTsalary group by gender;

-- COMMAND ----------

SELECT * FROM EmpWRTsalary;

-- COMMAND ----------

-- MAGIC  %python
-- MAGIC  display(dbutils.fs.ls('/'))

-- COMMAND ----------

-- MAGIC  %python
-- MAGIC  display(dbutils.fs.ls('dbfs:/databricks-datasets/'))

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df = spark.read.format("csv").options(header = "true").load("dbfs:/FileStore/tables/EmpWRTsalary.csv")

-- COMMAND ----------

-- MAGIC %python
-- MAGIC display(df)

-- COMMAND ----------

-- MAGIC   %python
-- MAGIC   dbutils.notebook.run('/Users/rudraksh.kushwaha@studentambassadors.com/DemoNotebook' , 60)

-- COMMAND ----------


