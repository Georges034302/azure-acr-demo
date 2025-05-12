#!/bin/bash

# One-time Azure login + ACR + resource group + service principal + GitHub Secrets

# Variables
RESOURCE_GROUP="wordcount-rg"
ACR_NAME="wordcountacr$(date +%s)"  # Unique ACR name
LOCATION="australiaeast"
SP_NAME="github-actions-sp"
