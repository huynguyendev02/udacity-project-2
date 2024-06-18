echo  $WEBAPPNAME
az webapp up --name $WEBAPPNAME --resource-group $RESOURCEGROUP --sku F1 --runtime "PYTHON:3.8" 
