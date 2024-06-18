echo  $WEBAPPNAME
az webapp up --name $WEBAPPNAME --resource-group $RESOURCEGROUP --sku B1 --logs --runtime "PYTHON:3.8"
