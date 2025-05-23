# Research + ML Training Pipeline on Simulated SLURM Cluster

This project demonstrates how real-world university research workloads and ML training pipelines can be scheduled and executed on a High-Performance Computing (HPC) cluster using **SLURM**, fully simulated inside Docker.

---

## 📌 Project Goals

- Mimic **university lab simulations** (e.g., physics/engineering workflows)
- Simulate **multi-epoch ML training pipelines**
- Use SLURM commands (`sbatch`, `squeue`, `scontrol`) to manage jobs
- Run in a self-contained Docker environment

---

## 📁 Folder Structure

```
hpc-job-simulation/
├── research_training_pipeline_job.sh         # Main SLURM job script
├── README.md                                  # Project documentation (this file)
```

---

## ⚙️ Technologies

- Docker & Docker Compose
- SLURM Job Scheduler
- Bash scripting
- Linux container (Ubuntu-based)

---

## 🚀 How to Run

### 1. Download the SLURM Docker cluster setup

This project is built on [`giovtorres/slurm-docker-cluster`](https://github.com/giovtorres/slurm-docker-cluster).  
Use their `docker-compose.yml` and instructions to launch a simulated SLURM cluster.

📦 Direct link to `docker-compose.yml`:  
[Download docker-compose.yml](https://raw.githubusercontent.com/giovtorres/slurm-docker-cluster/master/docker-compose.yml)

```bash
git clone https://github.com/giovtorres/slurm-docker-cluster.git slurm-cluster-setup
cd slurm-cluster-setup
docker-compose up -d
```

---

### 2. Access the SLURM controller

```bash
docker exec -it slurmctld bash
```

---

### 3. Inside the container: create and run the job

```bash
vi research_training_pipeline_job.sh
# (Paste the script content below)
sbatch research_training_pipeline_job.sh
```

Logs are stored at:

```
/tmp/manual_log_<jobid>.txt
```

---

## 📜 Job Script Functionality

- Simulates a **C++-style research simulation**: compile → run → write results
- Simulates **ML training**: 3-epoch loop
- Logs output manually using `tee` to avoid redirection issues in containers

---

## 🔍 Why It’s Realistic

- Uses real SLURM commands (`sbatch`, `squeue`)
- Includes job resource limits (`--mem`, `--time`, `--ntasks`)
- Logs output with timestamps and node details
- Mimics university/research workflows

---

## 💼 Resume Description

> Simulated a research + ML training pipeline on a Dockerized SLURM HPC cluster; scripted and monitored batch jobs to mimic real-world university workloads and multi-epoch ML pipelines, with manual logging for visibility in containerized environments.

---

## 📎 Attribution

SLURM Docker cluster setup is based on  
[`giovtorres/slurm-docker-cluster`](https://github.com/giovtorres/slurm-docker-cluster.git)

---

## 👨‍💻 Author

Samad Mehndi – [LinkedIn](https://linkedin.com/in/samad-mehndi)
