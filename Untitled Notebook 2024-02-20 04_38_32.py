# Databricks notebook source
DROP TABLE if exists EmpWRTsalary;
+ CREATE TABLE EmpWRTsalary USING CSV OPTIONS (path "/FileStore/tables/EmpWRTsalary.csv", header "true")
