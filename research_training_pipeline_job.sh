#!/bin/bash
#SBATCH --job-name=research_training_pipeline
#SBATCH --partition=normal
#SBATCH --output=research_training_output_%j.txt
#SBATCH --time=00:04:00
#SBATCH --ntasks=1
#SBATCH --mem=256M

echo "===== Starting University Research & ML Training Pipeline on $(hostname) ====="
echo "Job ID: $SLURM_JOB_ID"
echo "Allocated Nodes: $SLURM_JOB_NODELIST"
echo "Requested CPUs: $SLURM_CPUS_ON_NODE"
echo "Timestamp: $(date)"
echo

# ---------- Part 1: University Research Simulation ----------
echo ">>> Compiling simulation code (e.g., fluid dynamics)..."
sleep 5
echo ">>> Running simulation workload..."
sleep 10
echo ">>> Writing simulated results to output directory..."
mkdir -p /tmp/research_results_$SLURM_JOB_ID
echo "Simulation results (T=10s) saved." > /tmp/research_results_$SLURM_JOB_ID/output.txt
sleep 3
echo "Research simulation complete."
echo

# ---------- Part 2: ML Training Simulation ----------
echo ">>> Starting ML model training (ResNet-style simulation)..."
for epoch in {1..3}
do
  echo "Epoch $epoch: Training simulation in progress..."
  sleep 8
done
echo "Model training completed successfully."

echo
echo "===== Pipeline Finished at $(date) ====="

