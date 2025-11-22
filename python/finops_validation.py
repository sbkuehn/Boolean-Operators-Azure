"""
Author: Shannon Eldridge-Kuehn
Created: 2025-11-22
Purpose:
    Prevent high cost SKU deployment using boolean checks.
"""


import logging
logging.basicConfig(level=logging.INFO)

def validate_sku(sku: str) -> bool:
    blocked = (sku == "Standard_F64s")
    logging.info(f"SKU blocked: {blocked}")
    return not blocked

if __name__ == "__main__":
    sku = "Standard_F64s"
    if validate_sku(sku):
        logging.info("SKU approved.")
    else:
        logging.error("High cost SKU detected. Deployment blocked.")
        raise SystemExit(1)
