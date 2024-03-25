# Data Analyst Career Insight Tool

## Overview

This project utilizes SQL queries to analyze the job market, specifically focusing on the **Data Analyst** role. It aims to uncover insights into top-paying jobs, required skills, most demanded skills, and the optimal skills to learn for career advancement and financial benefit.

## Database Setup

### Step 1: Create Database

- **Initialize the Database**: Start by creating the `sql_course` database. Use the command provided in `1_create_database.sql`.

### Step 2: Create Tables

Set up the database with tables for companies (`company_dim`), skills (`skills_dim`), job postings (`job_postings_fact`), and job-skill associations (`skills_job_dim`). Refer to `2_create_tables.sql` for table creation commands.

### Step 3: Modify Tables/Data Import

Populate the tables with job market data using the instructions and commands found in `3_modify_tables.sql`. This includes detailed steps for addressing potential permissions issues.

## Queries and Analysis

- **Top Paying Jobs** (`1_top_paying_jobs.sql`): Identifies the top 10 highest-paying remote Data Analyst roles, enriched with company names.

- **Top Paying Job Skills** (`2_top_paying_job_skills.sql`): Determines the skills essential for securing top-paying Data Analyst positions.

- **Top Demanded Skills** (`3_top_demanded_skills.sql`): Lists the five most in-demand skills for Data Analysts across all job postings.

- **Top Paying Skills** (`4_top_paying_skills.sql`): Analyzes the average salary associated with each skill for Data Analysts, identifying the most lucrative skills.

- **Optimal Skills** (`5_optimal_skills.sql`): Identifies the most beneficial skills for Data Analysts by balancing high demand with high salary, specifically for remote positions.

## Purpose

The project acts as a strategic guide for both aspiring and current Data Analysts to navigate the job market, focusing on identifying skills that are both financially rewarding and in high demand. This guidance aims to support informed career development decisions.

## Usage

- **Execution Environment**: Execute the SQL commands within a PostgreSQL setup, following the initial database and tables setup, and data importation steps.

- **Insight Application**: Leverage the insights from each query to prioritize learning and career strategies effectively.

## Insights

Key findings highlight the importance of skills in **data management**, **programming**, **data visualization**, **blockchain technologies**, **specialized databases**, **AI/machine learning**, **DevOps**, and **advanced programming**. Focusing on these areas can help Data Analysts align their skills with the most relevant and financially beneficial opportunities in the job market.
