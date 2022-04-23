#!/usr/bin/env bash

set -e

APPNAME=$(az webapp list --query [0].name --output tsv)
APPRG=$(az webapp list --query [0].resourceGroup --output tsv)
APPPLAN=$(az appservice plan list --query [0].name --output tsv)
APPSKU=$(az appservice plan list --query [0].sku.name --output tsv)
APPLOCATION=$(az appservice plan list --query [0].location --output tsv)

export APPNAME
export APPRG
export APPPLAN
export APPSKU
export APPLOCATION

az webapp up --name "$APPNAME" --resource-group "$APPRG" --plan "$APPPLAN" --sku "$APPSKU" --location "$APPLOCATION" --os-type Windows
