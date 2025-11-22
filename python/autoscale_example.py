"""
Author: Shannon Eldridge-Kuehn
Created: 2025-11-22
Purpose:
    Evaluate autoscale conditions using boolean comparisons.
"""


import logging
logging.basicConfig(level=logging.INFO)

def evaluate_scale(cpu: int, node_count: int, max_nodes: int) -> bool:
    cpu_high = (cpu > 70)
    capacity_available = (node_count < max_nodes)

    logging.info(f"CPU high: {cpu_high}")
    logging.info(f"Capacity available: {capacity_available}")

    return cpu_high and capacity_available

if __name__ == "__main__":
    result = evaluate_scale(cpu=82, node_count=4, max_nodes=8)
    logging.info(f"Scale out recommended: {result}")
