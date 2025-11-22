"""
Author: Shannon Eldridge-Kuehn
Created: 2025-11-22
Purpose:
    Validate VM configuration using boolean logic.
"""


import logging

logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s | %(levelname)s | %(message)s"
)

def validate_vm(region: str, sku: str, image: str) -> bool:
    valid_region = (region == "eastus2")
    allowed_sku = (sku == "Standard_DS2_v2")
    allowed_image = (image == "UbuntuLTS")

    logging.info(f"Region valid: {valid_region}")
    logging.info(f"SKU valid: {allowed_sku}")
    logging.info(f"Image valid: {allowed_image}")

    return valid_region and allowed_sku and allowed_image

if __name__ == "__main__":
    region = "eastus2"
    sku = "Standard_DS2_v2"
    image = "UbuntuLTS"

    if validate_vm(region, sku, image):
        logging.info("Validation passed. VM ready for deployment.")
    else:
        logging.error("Validation failed. VM deployment blocked.")
        raise SystemExit(1)
